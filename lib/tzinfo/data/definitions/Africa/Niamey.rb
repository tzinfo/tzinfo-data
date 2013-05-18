# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Niamey
          include TimezoneDefinition
          
          timezone 'Africa/Niamey' do |tz|
            tz.offset :o0, 508, 0, :LMT
            tz.offset :o1, -3600, 0, :WAT
            tz.offset :o2, 0, 0, :GMT
            tz.offset :o3, 3600, 0, :WAT
            
            tz.transition 1911, 12, :o1, -1830384508, 52259093873, 21600
            tz.transition 1934, 2, :o2, -1131231600, 58259869, 24
            tz.transition 1960, 1, :o3, -315619200, 4873869, 2
          end
        end
      end
    end
  end
end
