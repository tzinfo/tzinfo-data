# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Kolkata
          include TimezoneDefinition
          
          timezone 'Asia/Kolkata' do |tz|
            tz.offset :o0, 21208, 0, :LMT
            tz.offset :o1, 21200, 0, :HMT
            tz.offset :o2, 23400, 0, :BURT
            tz.offset :o3, 19800, 0, :IST
            tz.offset :o4, 19800, 3600, :IST
            
            tz.transition 1879, 12, :o1, -2840162008, 26003324749, 10800
            tz.transition 1941, 9, :o2, -891582800, 524937943, 216
            tz.transition 1942, 5, :o3, -872058600, 116663723, 48
            tz.transition 1942, 8, :o4, -862637400, 116668957, 48
            tz.transition 1945, 10, :o3, -764145000, 116723675, 48
          end
        end
      end
    end
  end
end
