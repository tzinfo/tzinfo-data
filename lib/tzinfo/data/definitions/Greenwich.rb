# encoding: UTF-8

module TZInfo
  module Data
    module Definitions
      module Greenwich
        include TimezoneDefinition
        
        linked_timezone 'Greenwich', 'Etc/GMT'
      end
    end
  end
end
