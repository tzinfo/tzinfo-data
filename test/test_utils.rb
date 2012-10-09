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
