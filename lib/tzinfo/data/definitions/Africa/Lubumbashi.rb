# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Lubumbashi
          include TimezoneDefinition
          
          timezone 'Africa/Lubumbashi' do |tz|
            tz.offset :o0, 6592, 0, :LMT
            tz.offset :o1, 7200, 0, :CAT
            
            tz.transition 1897, 11, :o1, -2276646592, 1629610261, 675
          end
        end
      end
    end
  end
end
