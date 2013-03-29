# encoding: UTF-8

module TZInfo
  module Data
    module Definitions
      module Indian
        module Cocos
          include TimezoneDefinition
          
          timezone 'Indian/Cocos' do |tz|
            tz.offset :o0, 23260, 0, :LMT
            tz.offset :o1, 23400, 0, :CCT
            
            tz.transition 1899, 12, :o1, -2209012060, 10432887397, 4320
          end
        end
      end
    end
  end
end
