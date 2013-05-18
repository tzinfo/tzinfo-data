# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Kinshasa
          include TimezoneDefinition
          
          timezone 'Africa/Kinshasa' do |tz|
            tz.offset :o0, 3672, 0, :LMT
            tz.offset :o1, 3600, 0, :WAT
            
            tz.transition 1897, 11, :o1, -2276643672, 965694983, 400
          end
        end
      end
    end
  end
end
