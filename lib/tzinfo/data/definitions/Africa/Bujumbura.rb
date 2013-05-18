# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Bujumbura
          include TimezoneDefinition
          
          timezone 'Africa/Bujumbura' do |tz|
            tz.offset :o0, 7048, 0, :LMT
            tz.offset :o1, 7200, 0, :CAT
            
            tz.transition 1889, 12, :o1, -2524528648, 26042778919, 10800
          end
        end
      end
    end
  end
end
