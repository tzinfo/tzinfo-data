# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Mogadishu
          include TimezoneDefinition
          
          timezone 'Africa/Mogadishu' do |tz|
            tz.offset :o0, 10888, 0, :LMT
            tz.offset :o1, 10800, 0, :EAT
            tz.offset :o2, 9000, 0, :BEAT
            
            tz.transition 1893, 10, :o1, -2403572488, 26057898439, 10800
            tz.transition 1930, 12, :o2, -1230778800, 19410739, 8
            tz.transition 1956, 12, :o1, -410236200, 116920291, 48
          end
        end
      end
    end
  end
end
