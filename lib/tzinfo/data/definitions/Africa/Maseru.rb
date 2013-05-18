# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Maseru
          include TimezoneDefinition
          
          timezone 'Africa/Maseru' do |tz|
            tz.offset :o0, 6600, 0, :LMT
            tz.offset :o1, 7200, 0, :SAST
            tz.offset :o2, 7200, 3600, :SAST
            
            tz.transition 1903, 2, :o1, -2109289800, 347929117, 144
            tz.transition 1943, 9, :o2, -829526400, 4861973, 2
            tz.transition 1944, 3, :o1, -813805200, 58348043, 24
          end
        end
      end
    end
  end
end
