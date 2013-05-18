# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Accra
          include TimezoneDefinition
          
          timezone 'Africa/Accra' do |tz|
            tz.offset :o0, -52, 0, :LMT
            tz.offset :o1, 0, 0, :GMT
            tz.offset :o2, 0, 1200, :GHST
            
            tz.transition 1918, 1, :o1, -1640995148, 52306441213, 21600
            tz.transition 1936, 9, :o2, -1051920000, 4856825, 2
            tz.transition 1936, 12, :o1, -1041466800, 174854411, 72
            tz.transition 1937, 9, :o2, -1020384000, 4857555, 2
            tz.transition 1937, 12, :o1, -1009930800, 174880691, 72
            tz.transition 1938, 9, :o2, -988848000, 4858285, 2
            tz.transition 1938, 12, :o1, -978394800, 174906971, 72
            tz.transition 1939, 9, :o2, -957312000, 4859015, 2
            tz.transition 1939, 12, :o1, -946858800, 174933251, 72
            tz.transition 1940, 9, :o2, -925689600, 4859747, 2
            tz.transition 1940, 12, :o1, -915236400, 174959603, 72
            tz.transition 1941, 9, :o2, -894153600, 4860477, 2
            tz.transition 1941, 12, :o1, -883700400, 174985883, 72
            tz.transition 1942, 9, :o2, -862617600, 4861207, 2
            tz.transition 1942, 12, :o1, -852164400, 175012163, 72
          end
        end
      end
    end
  end
end
