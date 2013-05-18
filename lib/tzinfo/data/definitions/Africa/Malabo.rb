# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Malabo
          include TimezoneDefinition
          
          timezone 'Africa/Malabo' do |tz|
            tz.offset :o0, 2108, 0, :LMT
            tz.offset :o1, 0, 0, :GMT
            tz.offset :o2, 3600, 0, :WAT
            
            tz.transition 1911, 12, :o1, -1830386108, 52259093473, 21600
            tz.transition 1963, 12, :o2, -190857600, 4876757, 2
          end
        end
      end
    end
  end
end
