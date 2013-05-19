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

unless $:.include?(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
  $:.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
end

require 'test/unit'
require 'tzinfo/data'

puts $:.inspect

require 'tzinfo'

TZInfo::DataSource.set(:ruby)

module Kernel
  def assert_array_same_items(expected, actual, message = nil)
    full_message = build_message(message, "<?> expected by was <?>.", expected, actual)
    
    assert_block(full_message) do
      (expected.size == actual.size) && (expected - actual == [])
    end
  end
end
