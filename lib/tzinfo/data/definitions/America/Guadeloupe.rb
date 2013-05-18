# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module America
        module Guadeloupe
          include TimezoneDefinition
          
          timezone 'America/Guadeloupe' do |tz|
            tz.offset :o0, -14768, 0, :LMT
            tz.offset :o1, -14400, 0, :AST
            
            tz.transition 1911, 6, :o1, -1848254032, 13063656623, 5400
          end
        end
      end
    end
  end
end
