# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (https://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Europe
        module Skopje
          include TimezoneDefinition
          
          linked_timezone 'Europe/Skopje', 'Europe/Belgrade'
        end
      end
    end
  end
end
