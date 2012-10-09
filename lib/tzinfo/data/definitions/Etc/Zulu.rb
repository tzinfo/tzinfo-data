module TZInfo
  module Data
    module Definitions
      module Etc
        module Zulu
          include TimezoneDefinition
          
          linked_timezone 'Etc/Zulu', 'Etc/UTC'
        end
      end
    end
  end
end
