# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Seoul
          include TimezoneDefinition
          
          timezone 'Asia/Seoul' do |tz|
            tz.offset :o0, 30472, 0, :LMT
            tz.offset :o1, 30600, 0, :KST
            tz.offset :o2, 32400, 0, :JCST
            tz.offset :o3, 32400, 0, :JST
            tz.offset :o4, 32400, 0, :KST
            tz.offset :o5, 28800, 0, :KST
            tz.offset :o6, 28800, 3600, :KDT
            tz.offset :o7, 32400, 3600, :KDT
            
            tz.transition 1889, 12, :o1, -2524552072, 26042775991, 10800
            tz.transition 1904, 11, :o2, -2053931400, 116007127, 48
            tz.transition 1927, 12, :o1, -1325494800, 19401969, 8
            tz.transition 1931, 12, :o2, -1199262600, 116481943, 48
            tz.transition 1937, 9, :o3, -1017824400, 19430457, 8
            tz.transition 1945, 9, :o4, -767350800, 19453649, 8
            tz.transition 1954, 3, :o5, -498128400, 19478577, 8
            tz.transition 1960, 5, :o6, -303984000, 14622415, 6
            tz.transition 1960, 9, :o5, -293533200, 19497521, 8
            tz.transition 1961, 8, :o1, -264931200, 14625127, 6
            tz.transition 1968, 9, :o4, -39515400, 117126247, 48
            tz.transition 1987, 5, :o7, 547570800
            tz.transition 1987, 10, :o4, 560872800
            tz.transition 1988, 5, :o7, 579020400
            tz.transition 1988, 10, :o4, 592322400
          end
        end
      end
    end
  end
end
