# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module America
        module St_Kitts
          include TimezoneDefinition
          
          timezone 'America/St_Kitts' do |tz|
            tz.offset :o0, -15052, 0, :LMT
            tz.offset :o1, -14400, 0, :AST
            
            tz.transition 1912, 3, :o1, -1825098548, 52260415363, 21600
          end
        end
      end
    end
  end
end
