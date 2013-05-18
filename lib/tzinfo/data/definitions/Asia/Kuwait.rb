# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Kuwait
          include TimezoneDefinition
          
          timezone 'Asia/Kuwait' do |tz|
            tz.offset :o0, 11516, 0, :LMT
            tz.offset :o1, 10800, 0, :AST
            
            tz.transition 1949, 12, :o1, -631163516, 52558899121, 21600
          end
        end
      end
    end
  end
end
