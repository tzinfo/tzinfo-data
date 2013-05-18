# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Rangoon
          include TimezoneDefinition
          
          timezone 'Asia/Rangoon' do |tz|
            tz.offset :o0, 23080, 0, :LMT
            tz.offset :o1, 23080, 0, :RMT
            tz.offset :o2, 23400, 0, :BURT
            tz.offset :o3, 32400, 0, :JST
            tz.offset :o4, 23400, 0, :MMT
            
            tz.transition 1879, 12, :o1, -2840163880, 5200664903, 2160
            tz.transition 1919, 12, :o2, -1577946280, 5232220343, 2160
            tz.transition 1942, 4, :o3, -873268200, 116663051, 48
            tz.transition 1945, 5, :o4, -778410000, 19452625, 8
          end
        end
      end
    end
  end
end
