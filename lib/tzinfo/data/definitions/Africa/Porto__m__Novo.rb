# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Porto__m__Novo
          include TimezoneDefinition
          
          timezone 'Africa/Porto-Novo' do |tz|
            tz.offset :o0, 628, 0, :LMT
            tz.offset :o1, 0, 0, :GMT
            tz.offset :o2, 3600, 0, :WAT
            
            tz.transition 1911, 12, :o1, -1830384628, 52259093843, 21600
            tz.transition 1934, 2, :o2, -1131235200, 4854989, 2
          end
        end
      end
    end
  end
end
