# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Harare
          include TimezoneDefinition
          
          timezone 'Africa/Harare' do |tz|
            tz.offset :o0, 7452, 0, :LMT
            tz.offset :o1, 7200, 0, :CAT
            
            tz.transition 1903, 2, :o1, -2109290652, 1932939531, 800
          end
        end
      end
    end
  end
end
