require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'tzinfo/data/version'

class TCVersion < Minitest::Test
  def test_version
    assert(TZInfo::Data::VERSION =~ /\A\d+\.\d{4}\.\d+\z/)
  end

  def test_version_format
    assert_equal(1, TZInfo::Data::Version::FORMAT)
  end

  def test_version_string
    assert(TZInfo::Data::Version::STRING =~ /\A\d+\.\d{4}\.\d+\z/)
  end

  def test_version_tzdata
    assert(TZInfo::Data::Version::TZDATA =~ /\A[0-9]{4}[a-z]\z/)
  end
end
