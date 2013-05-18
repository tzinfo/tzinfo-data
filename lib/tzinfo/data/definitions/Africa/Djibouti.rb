# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Djibouti
          include TimezoneDefinition
          
          timezone 'Africa/Djibouti' do |tz|
            tz.offset :o0, 10356, 0, :LMT
            tz.offset :o1, 10800, 0, :EAT
            
            tz.transition 1911, 6, :o1, -1846291956, 17418372337, 7200
          end
        end
      end
    end
  end
end
