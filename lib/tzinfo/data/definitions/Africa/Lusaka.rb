# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Lusaka
          include TimezoneDefinition
          
          timezone 'Africa/Lusaka' do |tz|
            tz.offset :o0, 6788, 0, :LMT
            tz.offset :o1, 7200, 0, :CAT
            
            tz.transition 1903, 2, :o1, -2109289988, 52189367503, 21600
          end
        end
      end
    end
  end
end
