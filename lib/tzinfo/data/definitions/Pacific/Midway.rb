# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Pacific
        module Midway
          include TimezoneDefinition
          
          timezone 'Pacific/Midway' do |tz|
            tz.offset :o0, -42568, 0, :LMT
            tz.offset :o1, -39600, 0, :NST
            tz.offset :o2, -39600, 3600, :NDT
            tz.offset :o3, -39600, 0, :BST
            tz.offset :o4, -39600, 0, :SST
            
            tz.transition 1901, 1, :o1, -2177410232, 26086168721, 10800
            tz.transition 1956, 6, :o2, -428504400, 58455071, 24
            tz.transition 1956, 9, :o1, -420645600, 29228627, 12
            tz.transition 1967, 4, :o3, -86878800, 58549967, 24
            tz.transition 1983, 11, :o4, 439038000
          end
        end
      end
    end
  end
end
