# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Blantyre
          include TimezoneDefinition
          
          timezone 'Africa/Blantyre' do |tz|
            tz.offset :o0, 8400, 0, :LMT
            tz.offset :o1, 7200, 0, :CAT
            
            tz.transition 1903, 2, :o1, -2109291600, 173964557, 72
          end
        end
      end
    end
  end
end
