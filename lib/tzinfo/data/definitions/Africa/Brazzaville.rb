# encoding: UTF-8

module TZInfo
  module Data
    module Definitions
      module Africa
        module Brazzaville
          include TimezoneDefinition
          
          timezone 'Africa/Brazzaville' do |tz|
            tz.offset :o0, 3668, 0, :LMT
            tz.offset :o1, 3600, 0, :WAT
            
            tz.transition 1911, 12, :o1, -1830387668, 52259093083, 21600
          end
        end
      end
    end
  end
end
