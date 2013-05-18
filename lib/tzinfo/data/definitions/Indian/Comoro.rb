# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Indian
        module Comoro
          include TimezoneDefinition
          
          timezone 'Indian/Comoro' do |tz|
            tz.offset :o0, 10384, 0, :LMT
            tz.offset :o1, 10800, 0, :EAT
            
            tz.transition 1911, 6, :o1, -1846291984, 13063779251, 5400
          end
        end
      end
    end
  end
end
