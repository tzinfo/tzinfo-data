# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Dar_es_Salaam
          include TimezoneDefinition
          
          timezone 'Africa/Dar_es_Salaam' do |tz|
            tz.offset :o0, 9428, 0, :LMT
            tz.offset :o1, 10800, 0, :EAT
            tz.offset :o2, 9900, 0, :BEAUT
            
            tz.transition 1930, 12, :o1, -1230777428, 52408995643, 21600
            tz.transition 1947, 12, :o2, -694321200, 19460411, 8
            tz.transition 1960, 12, :o1, -284006700, 233980837, 96
          end
        end
      end
    end
  end
end
