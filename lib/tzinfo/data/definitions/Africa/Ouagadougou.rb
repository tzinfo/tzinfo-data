# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Ouagadougou
          include TimezoneDefinition
          
          timezone 'Africa/Ouagadougou' do |tz|
            tz.offset :o0, -364, 0, :LMT
            tz.offset :o1, 0, 0, :GMT
            
            tz.transition 1912, 1, :o1, -1830383636, 52259094091, 21600
          end
        end
      end
    end
  end
end
