# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Kigali
          include TimezoneDefinition
          
          timezone 'Africa/Kigali' do |tz|
            tz.offset :o0, 7216, 0, :LMT
            tz.offset :o1, 7200, 0, :CAT
            
            tz.transition 1935, 5, :o1, -1091498416, 13110953849, 5400
          end
        end
      end
    end
  end
end
