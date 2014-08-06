# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Taipei
          include TimezoneDefinition
          
          timezone 'Asia/Taipei' do |tz|
            tz.offset :o0, 29160, 0, :LMT
            tz.offset :o1, 28800, 0, :JWST
            tz.offset :o2, 32400, 0, :JST
            tz.offset :o3, 28800, 0, :CST
            tz.offset :o4, 28800, 3600, :CDT
            
            tz.transition 1895, 12, :o1, -2335248360, 193084733, 80
            tz.transition 1937, 9, :o2, -1017820800, 14572843, 6
            tz.transition 1945, 9, :o3, -766224000, 14590315, 6
            tz.transition 1946, 5, :o4, -745833600, 14591731, 6
            tz.transition 1946, 9, :o3, -733827600, 19456753, 8
            tz.transition 1947, 4, :o4, -716889600, 14593741, 6
            tz.transition 1947, 10, :o3, -699613200, 19459921, 8
            tz.transition 1948, 4, :o4, -683884800, 14596033, 6
            tz.transition 1948, 9, :o3, -670669200, 19462601, 8
            tz.transition 1949, 4, :o4, -652348800, 14598223, 6
            tz.transition 1949, 9, :o3, -639133200, 19465521, 8
            tz.transition 1950, 4, :o4, -620812800, 14600413, 6
            tz.transition 1950, 9, :o3, -607597200, 19468441, 8
            tz.transition 1951, 4, :o4, -589276800, 14602603, 6
            tz.transition 1951, 9, :o3, -576061200, 19471361, 8
            tz.transition 1952, 2, :o4, -562924800, 14604433, 6
            tz.transition 1952, 10, :o3, -541760400, 19474537, 8
            tz.transition 1953, 3, :o4, -528710400, 14606809, 6
            tz.transition 1953, 10, :o3, -510224400, 19477457, 8
            tz.transition 1954, 3, :o4, -497174400, 14608999, 6
            tz.transition 1954, 10, :o3, -478688400, 19480377, 8
            tz.transition 1955, 3, :o4, -465638400, 14611189, 6
            tz.transition 1955, 9, :o3, -449830800, 19483049, 8
            tz.transition 1956, 3, :o4, -434016000, 14613385, 6
            tz.transition 1956, 9, :o3, -418208400, 19485977, 8
            tz.transition 1957, 3, :o4, -402480000, 14615575, 6
            tz.transition 1957, 9, :o3, -386672400, 19488897, 8
            tz.transition 1958, 3, :o4, -370944000, 14617765, 6
            tz.transition 1958, 9, :o3, -355136400, 19491817, 8
            tz.transition 1959, 3, :o4, -339408000, 14619955, 6
            tz.transition 1959, 9, :o3, -323600400, 19494737, 8
            tz.transition 1960, 5, :o4, -302515200, 14622517, 6
            tz.transition 1960, 9, :o3, -291978000, 19497665, 8
            tz.transition 1961, 5, :o4, -270979200, 14624707, 6
            tz.transition 1961, 9, :o3, -260442000, 19500585, 8
            tz.transition 1974, 3, :o4, 133977600
            tz.transition 1974, 9, :o3, 149785200
            tz.transition 1975, 3, :o4, 165513600
            tz.transition 1975, 9, :o3, 181321200
            tz.transition 1979, 6, :o4, 299606400
            tz.transition 1979, 9, :o3, 307551600
          end
        end
      end
    end
  end
end
