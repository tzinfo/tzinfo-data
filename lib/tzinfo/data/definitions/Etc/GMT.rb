# encoding: UTF-8

module TZInfo
  module Data
    module Definitions
      module Etc
        module GMT
          include TimezoneDefinition
          
          timezone 'Etc/GMT' do |tz|
            tz.offset :o0, 0, 0, :GMT
            
          end
        end
      end
    end
  end
end
