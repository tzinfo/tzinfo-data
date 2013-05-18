# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Bamako
          include TimezoneDefinition
          
          timezone 'Africa/Bamako' do |tz|
            tz.offset :o0, -1920, 0, :LMT
            tz.offset :o1, 0, 0, :GMT
            tz.offset :o2, -3600, 0, :WAT
            
            tz.transition 1912, 1, :o1, -1830382080, 217746227, 90
            tz.transition 1934, 2, :o2, -1131235200, 4854989, 2
            tz.transition 1960, 6, :o1, -300841200, 58490533, 24
          end
        end
      end
    end
  end
end
