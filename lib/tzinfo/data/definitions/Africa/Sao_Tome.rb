# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Sao_Tome
          include TimezoneDefinition
          
          timezone 'Africa/Sao_Tome' do |tz|
            tz.offset :o0, 1616, 0, :LMT
            tz.offset :o1, -2192, 0, :LMT
            tz.offset :o2, 0, 0, :GMT
            
            tz.transition 1883, 12, :o1, -2713912016, 13009552999, 5400
            tz.transition 1912, 1, :o2, -1830381808, 13064773637, 5400
          end
        end
      end
    end
  end
end
