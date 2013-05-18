# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Gaborone
          include TimezoneDefinition
          
          timezone 'Africa/Gaborone' do |tz|
            tz.offset :o0, 6220, 0, :LMT
            tz.offset :o1, 5400, 0, :SAST
            tz.offset :o2, 7200, 0, :CAT
            tz.offset :o3, 7200, 3600, :CAST
            
            tz.transition 1884, 12, :o1, -2682294220, 10409223289, 4320
            tz.transition 1903, 2, :o2, -2109288600, 38658791, 16
            tz.transition 1943, 9, :o3, -829526400, 4861973, 2
            tz.transition 1944, 3, :o2, -813805200, 58348043, 24
          end
        end
      end
    end
  end
end
