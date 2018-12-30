require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'tzinfo/data/indexes/timezones'

class TCTimezoneIndex < Minitest::Test
  def data_files
    data_dir = tzdata_path
    files = Dir.entries(data_dir).select {|name| name =~ /\A[^\.]+\z/ && !%w(backzone leapseconds).include?(name) }
    files.collect {|name| File.join(data_dir, name)}
  end

  def get_zones(data, linked)
    result = []

    data_files.each do |data_file|
      File.open(data_file, 'r') do |file|
        file.each do |line|
          if (data && line =~ /\AZone\s+([^\s]+)\s/) || (linked && line =~ /\ALink\s+[^\s]+\s+([^\s]+)/)
            result << $1
          end
        end
      end
    end

    result.sort
  end

  # TZInfo v2 removed the timezones method.
  if TZInfo::Data::Indexes::Timezones.respond_to?(:timezones)
    def test_timezones
      assert_array_same_items(get_zones(true, true), TZInfo::Data::Indexes::Timezones.timezones)
    end
  end

  def test_data_timezones
    assert_array_same_items(get_zones(true, false), TZInfo::Data::Indexes::Timezones.data_timezones)
  end

  def test_linked_timezones
    assert_array_same_items(get_zones(false, true), TZInfo::Data::Indexes::Timezones.linked_timezones)
  end
end
