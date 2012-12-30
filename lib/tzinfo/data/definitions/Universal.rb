# encoding: UTF-8

module TZInfo
  module Data
    module Definitions
      module Universal
        include TimezoneDefinition
        
        linked_timezone 'Universal', 'Etc/UTC'
      end
    end
  end
end
