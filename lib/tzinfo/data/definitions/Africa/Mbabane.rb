# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Mbabane
          include TimezoneDefinition
          
          timezone 'Africa/Mbabane' do |tz|
            tz.offset :o0, 7464, 0, :LMT
            tz.offset :o1, 7200, 0, :SAST
            
            tz.transition 1903, 2, :o1, -2109290664, 8698227889, 3600
          end
        end
      end
    end
  end
end
