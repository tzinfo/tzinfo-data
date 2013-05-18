# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module America
        module St_Thomas
          include TimezoneDefinition
          
          timezone 'America/St_Thomas' do |tz|
            tz.offset :o0, -15584, 0, :LMT
            tz.offset :o1, -14400, 0, :AST
            
            tz.transition 1911, 7, :o1, -1846266016, 6531890437, 2700
          end
        end
      end
    end
  end
end
