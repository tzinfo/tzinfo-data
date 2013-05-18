# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Indian
        module Antananarivo
          include TimezoneDefinition
          
          timezone 'Indian/Antananarivo' do |tz|
            tz.offset :o0, 11404, 0, :LMT
            tz.offset :o1, 10800, 0, :EAT
            tz.offset :o2, 10800, 3600, :EAST
            
            tz.transition 1911, 6, :o1, -1846293004, 52255116749, 21600
            tz.transition 1954, 2, :o2, -499924800, 7304404, 3
            tz.transition 1954, 5, :o1, -492062400, 7304677, 3
          end
        end
      end
    end
  end
end
