unless $:.include?(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
  $:.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))
end

require 'minitest/autorun'
require 'tzinfo/data'

puts $:.inspect

require 'tzinfo'

TZInfo::DataSource.set(:ruby)

module Kernel
  def assert_array_same_items(expected, actual, msg = nil)
    full_message = message(msg, '') { diff(expected, actual) }
    condition = (expected.size == actual.size) && (expected - actual == [])
    assert(condition, full_message)
  end
  
  def assert_nothing_raised(msg = nil)
    begin
      yield
    rescue => e
      full_message = message(msg) { exception_details(e, 'Exception raised: ') }
      assert(false, full_message)
    end
  end

  if RUBY_VERSION =~ /\A1\.[0-8]\./
    def open_file(file_name, mode, opts, &block)
      File.open(file_name, mode, &block)
    end
  else
    def open_file(file_name, mode, opts, &block)
      File.open(file_name, mode, opts, &block)
    end
  end
end
