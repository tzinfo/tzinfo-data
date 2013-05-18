# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Dakar
          include TimezoneDefinition
          
          timezone 'Africa/Dakar' do |tz|
            tz.offset :o0, -4184, 0, :LMT
            tz.offset :o1, -3600, 0, :WAT
            tz.offset :o2, 0, 0, :GMT
            
            tz.transition 1912, 1, :o1, -1830379816, 26129547523, 10800
            tz.transition 1941, 6, :o2, -902098800, 58323517, 24
          end
        end
      end
    end
  end
end
