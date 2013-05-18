# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Asmara
          include TimezoneDefinition
          
          timezone 'Africa/Asmara' do |tz|
            tz.offset :o0, 9332, 0, :LMT
            tz.offset :o1, 9332, 0, :AMT
            tz.offset :o2, 9320, 0, :ADMT
            tz.offset :o3, 10800, 0, :EAT
            
            tz.transition 1869, 12, :o1, -3155682932, 51927769267, 21600
            tz.transition 1889, 12, :o2, -2524530932, 52085557267, 21600
            tz.transition 1936, 5, :o3, -1062210920, 5245113727, 2160
          end
        end
      end
    end
  end
end
