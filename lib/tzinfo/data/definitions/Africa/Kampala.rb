# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Kampala
          include TimezoneDefinition
          
          timezone 'Africa/Kampala' do |tz|
            tz.offset :o0, 7780, 0, :LMT
            tz.offset :o1, 10800, 0, :EAT
            tz.offset :o2, 9000, 0, :BEAT
            tz.offset :o3, 9900, 0, :BEAUT
            
            tz.transition 1928, 6, :o1, -1309745380, 10477850731, 4320
            tz.transition 1929, 12, :o2, -1262314800, 19407819, 8
            tz.transition 1947, 12, :o3, -694319400, 116762467, 48
            tz.transition 1956, 12, :o1, -410237100, 233840581, 96
          end
        end
      end
    end
  end
end
