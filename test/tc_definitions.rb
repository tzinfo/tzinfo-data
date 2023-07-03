require File.join(File.expand_path(File.dirname(__FILE__)), 'test_utils')
require 'date'
require 'tmpdir'
require 'set'

class TCDefinitions < Minitest::Test
  @@warned_for_datetime = Set.new
  @@warned_for_time = Set.new
  @@warned_for_datetime_lock = Mutex.new
  @@warned_for_time_lock = Mutex.new

  class << self
    private

    def enum_timezones(base_dir, dir = nil, &block)
      Dir.foreach(dir ? File.join(base_dir, dir) : base_dir) do |entry|
        unless entry =~ /\A\./
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

    def data_files
      data_dir = tzdata_path

      files = Dir.entries(data_dir).select do |name|
        name =~ /\A[^\.]+\z/ &&
          !%w(backzone calendars leapseconds CONTRIBUTING LICENSE Makefile NEWS README SECURITY SOURCE Theory version).include?(name) &&
          File.file?(File.join(data_dir, name))
      end

      files.collect {|name| File.join(data_dir, name)}
    end
  end

  enum_timezones(zoneinfo_path) do |identifier|
    define_method("test_#{identifier}") do
      # 50 years of future transitions are generated. Assume that the year from
      # the tzdata version is the year the TZInfo::Data modules were generated.
      max_year = TZInfo::Data::Version::TZDATA.to_i + 50

      zone = TZInfo::Timezone.get(identifier)
      assert_equal(identifier, zone.identifier)

      old_lang = ENV['LANG']
      begin
        # Use standard C locale to ensure that zdump outputs dates in a format
        # that can be understood
        ENV['LANG'] = 'C'

        zdump_cmdline = "'#{zdump_path}' -c #{max_year} -v \"#{File.absolute_path(File.join(zoneinfo_path, identifier))}\""
        IO.popen(zdump_cmdline) do |io|
          io.each_line do |line|
            line.chomp!
            check_zdump_line(zone, line, max_year) {|s| parse_as_datetime(s) }
            check_zdump_line(zone, line, max_year) {|s| parse_as_time(s) }
          end
        end

        raise "Failed to execute #{zdump_cmdline}" unless $? == 0
      ensure
        ENV['LANG'] = old_lang
      end
    end
  end

  data_files.each do |data_file|
    File.open(data_file, 'r') do |file|
      file.each do |line|
        if line =~ /\AZone\s+([^\s]+)\s/
          identifier = $1

          define_method("test_#{identifier}_is_data") do
            zone = TZInfo::Timezone.get(identifier)
            assert_equal(identifier, zone.identifier)
            assert_kind_of(TZInfo::DataTimezone, zone)
          end
        elsif line =~ /\ALink\s+([^\s]+)\s+([^\s]+)/
          link_to_identifier = $1
          identifier = $2

          define_method("test_#{identifier}_is_link_to_#{link_to_identifier}") do
            zone = TZInfo::Timezone.get(identifier)
            assert_equal(identifier, zone.identifier)
            assert_kind_of(TZInfo::LinkedTimezone, zone)
            assert_equal(link_to_identifier, zone.send(:info).link_to_identifier)
          end
        end
      end
    end
  end

  private

  def resolve_ambiguity(periods, identifier, tzi_period)
    # Attempt to resolve by just the identifier.
    result = periods.select {|period| period.zone_identifier.to_s == identifier}

    if result.length > 1
      # No observable difference. Resolve by finding the actual period
      # no the time to be in based on the utc time.
      result.select {|period| period == tzi_period}
    else
      result
    end
  end

  def fix_datetime_start(time_or_datetime)
    # Handle TZInfo 2.0.0 to 2.0.4 returning DateTime instances that interpret
    # timestamps using the Julian calendar when they are before the adoption of
    # the Gregorian calendar in Italy. Adjust the start so the date and time
    # can be intepreted using the Gregorian calendar (as would be the case with
    # the Time class).
    if time_or_datetime.respond_to?(:start) && time_or_datetime.start != Date::GREGORIAN && time_or_datetime.respond_to?(:new_start)
      time_or_datetime.new_start(Date::GREGORIAN)
    else
      time_or_datetime
    end
  end

  def check_zdump_line(zone, line, max_year)
    if line =~ /\A[^\s]+\s+(?:([A-Za-z][a-z]{2}\s[A-Za-z][a-z]{2}\s+[0-9]+\s[0-9]+:[0-9]+:[0-9]+\s-?[0-9]+)\s[A-Z]+|(-?[0-9]+))\s=\s([A-Za-z][a-z]{2}\s[A-Za-z][a-z]{2}\s+[0-9]+\s[0-9]+:[0-9]+:[0-9]+\s-?[0-9]+)\s([A-Za-z0-9+\-]+)\sisdst=([01])/ then
      assert_nothing_raised("Exception raised processing line:\n#{line}") do
        utc = yield $1 || $2
        local = yield $3
        identifier = $4
        is_dst = $5 == '1'

        # zdump 2021b outputs dates with years in the far future (after
        # max_year). TZInfo::Data doesn't include a rule for years beyond the
        # end of the data. Ignore them. Note that the start of max_year is the
        # cutoff passed to zdump.
        if utc && local && utc.year < max_year
          tzi_local = zone.utc_to_local(utc)
          tzi_period = zone.period_for_utc(utc)
          tzi_identifier = tzi_period.zone_identifier.to_s
          tzi_is_dst = tzi_period.dst?

          tzi_local = fix_datetime_start(tzi_local)

          # TZInfo v2 returns times with a local offset, TZInfo v1 doesn't. For
          # now, compare just the date and time, by removing the offset.
          # Eventually this will be changed to check the offset is correct.
          if tzi_local.respond_to?(:offset) && tzi_local.offset != 0 && tzi_local.respond_to?(:new_offset)
            # DateTime
            tzi_local = tzi_local.new_offset(0) + tzi_local.offset
          elsif tzi_local.respond_to?(:utc_offset) && tzi_local.utc_offset != 0 && tzi_local.respond_to?(:getutc)
            # Time
            tzi_local = tzi_local.getutc + tzi_local.utc_offset
          end

          msg_zdump  = "zdump:         #{zone.identifier} #{utc} UTC #{local} #{identifier} is_dst=#{is_dst ? '1' : '0'}"
          msg_tzinfo = "tzinfo (u->l): #{zone.identifier} #{utc} UTC #{tzi_local} #{tzi_identifier} is_dst=#{tzi_is_dst ? '1' : '0'}"
          message = "#{msg_zdump}\n#{msg_tzinfo}"

          assert_equal(local, tzi_local, "Local times don't match:\n#{message}")
          assert_equal(identifier, tzi_identifier, "Identifiers don't match:\n#{message}\n#")
          assert_equal(is_dst, tzi_is_dst, "DST flag doesn't match:\n#{message}")

          tzi_utc = zone.local_to_utc(local, is_dst) {|periods| resolve_ambiguity(periods, identifier, tzi_period)}
          tzi_local_identifier = (zone.period_for_local(local, is_dst) {|periods| resolve_ambiguity(periods, identifier, tzi_period)}).zone_identifier.to_s

          tzi_utc = fix_datetime_start(tzi_utc)

          msg_zdump  = "zdump:         #{zone.identifier} #{utc} UTC #{local} #{identifier}"
          msg_tzinfo = "tzinfo (l->u): #{zone.identifier} #{tzi_utc} UTC #{local} #{tzi_local_identifier}"
          message = "#{msg_zdump}\n#{msg_tzinfo}"

          assert_equal(utc, tzi_utc, "UTC times don't match:\n#{message}")
          assert_equal(identifier, tzi_local_identifier, "Local identifiers don't match:\n#{message}")
        end
      end
    else
      assert_match(/(?:-?\d+\s\(gmtime failed\)\s=\s|\s=\s(?:NULL|-?\d+\s\(localtime failed\))\z)/, line, 'Unexpected zdump format')
    end
  end

  MONTHS = %w(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec).freeze

  def parse_zdump_timestamp(s)
    if s =~ /\A(?:Mon|Tue|Wed|Thu|Fri|Sat|Sun)\s(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+(\d\d?)\s(\d\d):(\d\d):(\d\d)\s(-?\d+)\z/
      month = MONTHS.index($1) + 1
      [[$6.to_i, month, $2.to_i, $3.to_i, $4.to_i, $5.to_i], nil]
    elsif s =~ /\A-?[0-9]+\z/
      [nil, s.to_i]
    else
      raise "Unexpected zdump timestamp format: #{s}"
    end
  end

  JD_EPOCH = 2440588

  def parse_as_datetime(s)
    datetime_params, timestamp = parse_zdump_timestamp(s)
    begin
      datetime_params ?
        DateTime.new(*datetime_params, 0, Date::GREGORIAN) :
        DateTime.jd(JD_EPOCH + Rational(timestamp, 86400)).new_start(Date::GREGORIAN)
    rescue => e
      # JRuby doesn't support DateTimes far in the past.
      type = e.to_s
      if @@warned_for_datetime_lock.synchronize { @@warned_for_datetime.add?(type) }
        warn("Skipping DateTime test for #{s}: #{type}")
      end
      nil
    end
  end

  def parse_as_time(s)
    time_params, timestamp = parse_zdump_timestamp(s)
    begin
      time_params ? Time.utc(*time_params) : Time.at(timestamp).utc
    rescue => e
      # Time doesn't support the full range required on all platforms.
      type = e.to_s
      if @@warned_for_time_lock.synchronize { @@warned_for_time.add?(type) }
        warn("Skipping Time test for #{s}: #{type}")
      end
      nil
    end
  end
end
