#--
# Copyright (c) 2012-2013 Philip Ross
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#++

require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'tzinfo/data/indexes/timezones'

class TCTimezoneIndex < Test::Unit::TestCase
  DATA_DIR = File.expand_path(File.join(File.dirname(__FILE__), '..', 'data'))
  
  def data_files
    files = Dir.entries(DATA_DIR).select {|name| name =~ /^[^\.]+$/ && name != 'leapseconds'}
    files.collect {|name| File.join(DATA_DIR, name)}
  end
  
  def get_zones(data, linked)
    result = []
    
    data_files.each do |data_file|
      File.open(data_file, 'r') do |file|
        file.each do |line|
          if (data && line =~ /\AZone\s+([^\s]+)\s/ && $1 != 'Factory') || (linked && line =~ /\ALink\s+[^\s]+\s+([^\s]+)/)
            result << $1
          end
        end
      end
    end
    
    result.sort
  end
  
  def test_timezones
    assert_array_same_items(get_zones(true, true), TZInfo::Data::Indexes::Timezones.timezones)
  end
  
  def test_data_timezones
    assert_array_same_items(get_zones(true, false), TZInfo::Data::Indexes::Timezones.data_timezones)
  end
  
  def test_linked_timezones
    assert_array_same_items(get_zones(false, true), TZInfo::Data::Indexes::Timezones.linked_timezones)
  end
end
