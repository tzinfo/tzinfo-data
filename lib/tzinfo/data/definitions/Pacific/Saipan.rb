# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Pacific
        module Saipan
          include TimezoneDefinition
          
          timezone 'Pacific/Saipan' do |tz|
            tz.offset :o0, -51420, 0, :LMT
            tz.offset :o1, 34980, 0, :LMT
            tz.offset :o2, 32400, 0, :MPT
            tz.offset :o3, 36000, 0, :MPT
            tz.offset :o4, 36000, 0, :ChST
            
            tz.transition 1844, 12, :o1, -3944626980, 3448702217, 1440
            tz.transition 1900, 12, :o2, -2177487780, 3478154537, 1440
            tz.transition 1969, 9, :o3, -7981200, 19523961, 8
            tz.transition 2000, 12, :o4, 977493600
          end
        end
      end
    end
  end
end
