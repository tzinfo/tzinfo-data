require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'tzinfo/data/indexes/countries'

class TCCountryIndex < Minitest::Test
  def countries
    data_dir = tzdata_path

    primary_zones = {}
    secondary_zones = {}

    open_file(File.join(data_dir, 'zone1970.tab'), 'r', :external_encoding => 'UTF-8', :internal_encoding => 'UTF-8') do |file|
      file.each_line do |line|
        line.chomp!

        if line =~ /\A([A-Z]{2}(?:,[A-Z]{2})*)\t(?:([+\-])(\d{2})(\d{2})([+\-])(\d{3})(\d{2})|([+\-])(\d{2})(\d{2})(\d{2})([+\-])(\d{3})(\d{2})(\d{2}))\t([^\t]+)(?:\t([^\t]+))?\z/
          codes = $1

          if $2
            latitude = dms_to_rational($2, $3, $4)
            longitude = dms_to_rational($5, $6, $7)
          else
            latitude = dms_to_rational($8, $9, $10, $11)
            longitude = dms_to_rational($12, $13, $14, $15)
          end

          zone_identifier = $16
          description = $17

          country_timezone = {:zone_identifier => zone_identifier, :latitude => latitude, :longitude => longitude, :description => description}
          codes = codes.split(',')

          (primary_zones[codes.first] ||= []) << country_timezone

          codes[1..-1].each do |code|
            (secondary_zones[code] ||= []) << country_timezone
          end
        end
      end
    end

    countries = {}

    open_file(File.join(data_dir, 'iso3166.tab'), 'r', :external_encoding => 'UTF-8', :internal_encoding => 'UTF-8') do |file|
      file.each_line do |line|
        line.chomp!

        if line =~ /\A([A-Z]{2})\t(.+)\z/
          code = $1
          name = $2
          zones = (primary_zones[code] || []) + (secondary_zones[code] || [])
          countries[code] = {:name => name, :zones => zones}
        end
      end
    end

    countries
  end

  def dms_to_rational(sign, degrees, minutes, seconds = nil)
    result = degrees.to_i + Rational(minutes.to_i, 60)
    result += Rational(seconds.to_i, 3600) if seconds
    result = -result if sign == '-'
    result
  end

  def test_countries
    expected = countries
    actual = TZInfo::Data::Indexes::Countries.countries

    assert_array_same_items(expected.keys.sort, actual.keys.sort)

    expected.each do |code, expected_country|
      actual_country = actual[code]

      assert_equal(code, actual_country.code)
      assert_equal(expected_country[:name], actual_country.name)
      assert_equal(expected_country[:zones].length, actual_country.zones.length)

      expected_country[:zones].zip(actual_country.zones).each do |expected_zone, actual_zone|
        assert_equal(expected_zone[:zone_identifier], actual_zone.identifier)
        assert_equal(expected_zone[:latitude], actual_zone.latitude)
        assert_equal(expected_zone[:longitude], actual_zone.longitude)

        if expected_zone[:description]
          assert_equal(expected_zone[:description], actual_zone.description)
        else
          assert_nil(actual_zone.description)
        end
      end
    end
  end
end
