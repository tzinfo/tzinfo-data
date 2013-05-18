# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Pacific
        module Norfolk
          include TimezoneDefinition
          
          timezone 'Pacific/Norfolk' do |tz|
            tz.offset :o0, 40312, 0, :LMT
            tz.offset :o1, 40320, 0, :NMT
            tz.offset :o2, 41400, 0, :NFT
            
            tz.transition 1900, 12, :o1, -2177493112, 26086158361, 10800
            tz.transition 1950, 12, :o2, -599656320, 73009411, 30
          end
        end
      end
    end
  end
end
