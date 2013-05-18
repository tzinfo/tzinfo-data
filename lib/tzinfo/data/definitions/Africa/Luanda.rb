# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Luanda
          include TimezoneDefinition
          
          timezone 'Africa/Luanda' do |tz|
            tz.offset :o0, 3176, 0, :LMT
            tz.offset :o1, 3124, 0, :AOT
            tz.offset :o2, 3600, 0, :WAT
            
            tz.transition 1891, 12, :o1, -2461452776, 26050663403, 10800
            tz.transition 1911, 5, :o2, -1849395124, 52254341219, 21600
          end
        end
      end
    end
  end
end
