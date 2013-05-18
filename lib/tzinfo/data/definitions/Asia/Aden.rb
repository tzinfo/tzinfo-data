# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Aden
          include TimezoneDefinition
          
          timezone 'Asia/Aden' do |tz|
            tz.offset :o0, 10794, 0, :LMT
            tz.offset :o1, 10800, 0, :AST
            
            tz.transition 1949, 12, :o1, -631162794, 35039266201, 14400
          end
        end
      end
    end
  end
end
