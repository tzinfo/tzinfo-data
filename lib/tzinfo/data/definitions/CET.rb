# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (https://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module CET
        include TimezoneDefinition
        
        linked_timezone 'CET', 'Europe/Brussels'
      end
    end
  end
end
