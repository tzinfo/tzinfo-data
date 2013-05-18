# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Bahrain
          include TimezoneDefinition
          
          timezone 'Asia/Bahrain' do |tz|
            tz.offset :o0, 12140, 0, :LMT
            tz.offset :o1, 14400, 0, :GST
            tz.offset :o2, 10800, 0, :AST
            
            tz.transition 1919, 12, :o1, -1577935340, 10464441233, 4320
            tz.transition 1972, 5, :o2, 76190400
          end
        end
      end
    end
  end
end
