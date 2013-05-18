# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module America
        module Antigua
          include TimezoneDefinition
          
          timezone 'America/Antigua' do |tz|
            tz.offset :o0, -14832, 0, :LMT
            tz.offset :o1, -18000, 0, :EST
            tz.offset :o2, -14400, 0, :AST
            
            tz.transition 1912, 3, :o1, -1825098768, 1451678203, 600
            tz.transition 1951, 1, :o2, -599598000, 58407545, 24
          end
        end
      end
    end
  end
end
