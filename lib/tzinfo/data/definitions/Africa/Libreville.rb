# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Libreville
          include TimezoneDefinition
          
          timezone 'Africa/Libreville' do |tz|
            tz.offset :o0, 2268, 0, :LMT
            tz.offset :o1, 3600, 0, :WAT
            
            tz.transition 1911, 12, :o1, -1830386268, 1935521979, 800
          end
        end
      end
    end
  end
end
