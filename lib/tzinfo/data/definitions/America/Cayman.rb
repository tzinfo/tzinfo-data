# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module America
        module Cayman
          include TimezoneDefinition
          
          timezone 'America/Cayman' do |tz|
            tz.offset :o0, -19532, 0, :LMT
            tz.offset :o1, -18431, 0, :KMT
            tz.offset :o2, -18000, 0, :EST
            
            tz.transition 1890, 1, :o1, -2524502068, 52085564483, 21600
            tz.transition 1912, 2, :o2, -1827687169, 209039072831, 86400
          end
        end
      end
    end
  end
end
