require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'tzinfo/data/indexes/countries'

class TCCountryIndex < Minitest::Test
  DATA_DIR = File.expand_path(File.join(File.dirname(__FILE__), '..', 'data'))

  def countries
    zones = {}
    
    File.open(File.join(DATA_DIR, 'zone.tab')) do |file|
      file.each_line do |line|
        line.chomp!
        
        if line =~ /\A([A-Z]{2})\t(?:([+\-])(\d{2})(\d{2})([+\-])(\d{3})(\d{2})|([+\-])(\d{2})(\d{2})(\d{2})([+\-])(\d{3})(\d{2})(\d{2}))\t([^\t]+)(?:\t([^\t]+))?\z/
          code = $1
          
          if $2
            latitude = dms_to_rational($2, $3, $4)
            longitude = dms_to_rational($5, $6, $7)
          else
            latitude = dms_to_rational($8, $9, $10, $11)
            longitude = dms_to_rational($12, $13, $14, $15)
          end
          
          zone_identifier = $16
          description = $17
          
          (zones[code] ||= []) << {:zone_identifier => zone_identifier, :latitude => latitude, :longitude => longitude, :description => description}
        end
      end
    end
    
    countries = {}
    
    File.open(File.join(DATA_DIR, 'iso3166.tab')) do |file|
      file.each_line do |line|
        line.chomp!
        
        if line =~ /\A([A-Z]{2})\t(.+)\z/
          code = $1
          name = $2
          countries[code] = {:name => name, :zones => zones[code] || []}
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
        assert_equal(expected_zone[:description], actual_zone.description)
      end
    end
  end
end
