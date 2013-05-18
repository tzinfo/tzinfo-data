# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Lome
          include TimezoneDefinition
          
          timezone 'Africa/Lome' do |tz|
            tz.offset :o0, 292, 0, :LMT
            tz.offset :o1, 0, 0, :GMT
            
            tz.transition 1892, 12, :o1, -2429827492, 52109233127, 21600
          end
        end
      end
    end
  end
end
