# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Bangui
          include TimezoneDefinition
          
          timezone 'Africa/Bangui' do |tz|
            tz.offset :o0, 4460, 0, :LMT
            tz.offset :o1, 3600, 0, :WAT
            
            tz.transition 1911, 12, :o1, -1830388460, 10451818577, 4320
          end
        end
      end
    end
  end
end
