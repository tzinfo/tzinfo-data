require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'tmpdir'

class TCDefinitions < Test::Unit::TestCase
  
  DATA_DIR = File.expand_path(File.join(File.dirname(__FILE__), '..', 'data'))
  
  def data_files
    files = Dir.entries(DATA_DIR).select {|name| name =~ /^[^\.]+$/ && name != 'leapseconds'}
    files.collect {|name| File.join(DATA_DIR, name)}
  end
  
  def compile_data(dest_dir)
    unless system('zic', '-d', dest_dir, *data_files)
      raise 'Could not execute zic'
    end
  end
  
  def enum_timezones(base_dir, dir, exclude = [], &block)
    Dir.foreach(dir ? File.join(base_dir, dir) : base_dir) do |entry|
      unless entry =~ /\./ || exclude.include?(entry)
        path = dir ? File.join(dir, entry) : entry
        full_path = File.join(base_dir, path)

        if File.directory?(full_path)
          enum_timezones(base_dir, path, &block)
        else
          yield path
        end
      end
    end
  end
  
  def resolve_ambiguity(periods, identifier, tzi_period)
    # Attempt to resolve by just the identifier.
    result = periods.select {|period| period.zone_identifier == identifier}

    if result.length > 1
      # No observable difference. Resolve by finding the actual period
      # no the time to be in based on the utc time.
      result.select {|period| period == tzi_period}
    else
      result
    end
  end
  
  def check_zdump_line(zone, line)
    if line =~ /\A[^\s]+\s+([A-z][a-z]{2}\s[A-z][a-z]{2}\s+[0-9]+\s[0-9]+:[0-9]+:[0-9]+\s[0-9]+)\s[A-Z]+\s=\s([A-z][a-z]{2}\s[A-z][a-z]{2}\s+[0-9]+\s[0-9]+:[0-9]+:[0-9]+\s[0-9]+)\s([A-Za-z0-9+\-]+)\sisdst=([01])/ then
      assert_nothing_raised("Exception raised processing line:\n#{line}") do
        utc = DateTime.parse($1)
        local = DateTime.parse($2)
        identifier = $3.to_sym
        is_dst = $4 == '1'
     
        tzi_local = zone.utc_to_local(utc)
        tzi_period = zone.period_for_utc(utc)
        tzi_identifier = tzi_period.zone_identifier
        tzi_is_dst = tzi_period.dst?
        
        msg_zdump  = "zdump:         #{zone.identifier} #{utc} UTC #{local} #{identifier} is_dst=#{is_dst ? '1' : '0'}"
        msg_tzinfo = "tzinfo (u->l): #{zone.identifier} #{utc} UTC #{tzi_local} #{tzi_identifier} is_dst=#{tzi_is_dst ? '1' : '0'}"
        message = "#{msg_zdump}\n#{msg_tzinfo}"
        
        assert_equal(local, tzi_local, "Local times don't match:\n#{message}")
        assert_equal(identifier, tzi_identifier, "Identifiers don't match:\n#{message}")
        assert_equal(is_dst, tzi_is_dst, "DST flag doesn't match:\n#{message}")
     
     
        tzi_utc = zone.local_to_utc(local, is_dst) {|periods| resolve_ambiguity(periods, identifier, tzi_period)}
        tzi_local_identifier = (zone.period_for_local(local, is_dst) {|periods| resolve_ambiguity(periods, identifier, tzi_period)}).zone_identifier

        msg_zdump  = "zdump:         #{zone.identifier} #{utc} UTC #{local} #{identifier}"
        msg_tzinfo = "tzinfo (l->u): #{zone.identifier} #{tzi_utc} UTC #{local} #{tzi_local_identifier}"
        message = "#{msg_zdump}\n#{msg_tzinfo}"

        assert_equal(utc, tzi_utc, "UTC times don't match:\n#{message}")
        assert_equal(identifier, tzi_local_identifier, "Local identifiers don't match:\n#{message}")
      end
    end
  end
  
  def test_all
    Dir.mktmpdir('tzinfo-data-test') do |dir|
      compile_data(dir)

      enum_timezones(dir, nil, ['localtime', 'posix', 'posixrules', 'right', 'Factory']) do |identifier|
        zone = TZInfo::Timezone.get(identifier)
        assert_equal(identifier, zone.identifier)
        
        IO.popen("zdump -c 2050 -v \"#{File.join(dir, identifier)}\"") do |io|
          io.each_line do |line|
            line.chomp!
            check_zdump_line(zone, line)
          end
        end
      end
    end
  end
  
  def test_zone_types
    data_files.each do |data_file|
      File.open(data_file, 'r') do |file|
        file.each do |line|
          if line =~ /\AZone\s+([^\s]+)\s/ && $1 != 'Factory'
            zone = TZInfo::Timezone.get($1)
            assert_equal($1, zone.identifier)
            assert_kind_of(TZInfo::DataTimezone, zone)
          elsif line =~ /\ALink\s+([^\s]+)\s+([^\s]+)/
            zone = TZInfo::Timezone.get($2)
            assert_equal($2, zone.identifier)
            assert_kind_of(TZInfo::LinkedTimezone, zone)
            assert_equal($1, zone.send(:info).link_to_identifier)
          end
        end
      end
    end
  end
end
