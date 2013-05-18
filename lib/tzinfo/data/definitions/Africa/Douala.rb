# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Douala
          include TimezoneDefinition
          
          timezone 'Africa/Douala' do |tz|
            tz.offset :o0, 2328, 0, :LMT
            tz.offset :o1, 3600, 0, :WAT
            
            tz.transition 1911, 12, :o1, -1830386328, 8709848903, 3600
          end
        end
      end
    end
  end
end
