require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'tzinfo/data/version'

class TCVersion < Test::Unit::TestCase
  def test_format
    assert_equal(1, TZInfo::Data::Version::FORMAT)
  end
  
  def test_tzdata
    assert(TZInfo::Data::Version::TZDATA =~ /\A[0-9]{4}[a-z]\z/)
  end
end
