# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Makassar
          include TimezoneDefinition
          
          timezone 'Asia/Makassar' do |tz|
            tz.offset :o0, 28656, 0, :LMT
            tz.offset :o1, 28656, 0, :MMT
            tz.offset :o2, 28800, 0, :WITA
            tz.offset :o3, 32400, 0, :JST
            
            tz.transition 1919, 12, :o1, -1577951856, 1453394501, 600
            tz.transition 1932, 10, :o2, -1172908656, 1456207301, 600
            tz.transition 1942, 2, :o3, -880272000, 14582395, 6
            tz.transition 1945, 9, :o2, -766054800, 19453769, 8
          end
        end
      end
    end
  end
end
