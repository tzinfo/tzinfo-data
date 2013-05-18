# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Freetown
          include TimezoneDefinition
          
          timezone 'Africa/Freetown' do |tz|
            tz.offset :o0, -3180, 0, :LMT
            tz.offset :o1, -3180, 0, :FMT
            tz.offset :o2, -3600, 0, :WAT
            tz.offset :o3, -3600, 2400, :SLST
            tz.offset :o4, 0, 0, :WAT
            tz.offset :o5, 0, 3600, :SLST
            tz.offset :o6, 0, 0, :GMT
            
            tz.transition 1882, 1, :o1, -2776979220, 3468163013, 1440
            tz.transition 1913, 6, :o2, -1785712020, 3484684133, 1440
            tz.transition 1935, 6, :o3, -1091487600, 58270909, 24
            tz.transition 1935, 10, :o2, -1080949200, 174821509, 72
            tz.transition 1936, 6, :o3, -1059865200, 58279693, 24
            tz.transition 1936, 10, :o2, -1049326800, 174847861, 72
            tz.transition 1937, 6, :o3, -1028329200, 58288453, 24
            tz.transition 1937, 10, :o2, -1017790800, 174874141, 72
            tz.transition 1938, 6, :o3, -996793200, 58297213, 24
            tz.transition 1938, 10, :o2, -986254800, 174900421, 72
            tz.transition 1939, 6, :o3, -965257200, 58305973, 24
            tz.transition 1939, 10, :o2, -954718800, 174926701, 72
            tz.transition 1940, 6, :o3, -933634800, 58314757, 24
            tz.transition 1940, 10, :o2, -923096400, 174953053, 72
            tz.transition 1941, 6, :o3, -902098800, 58323517, 24
            tz.transition 1941, 10, :o2, -891560400, 174979333, 72
            tz.transition 1942, 6, :o3, -870562800, 58332277, 24
            tz.transition 1942, 10, :o2, -860024400, 175005613, 72
            tz.transition 1957, 1, :o4, -410223600, 58460149, 24
            tz.transition 1957, 6, :o5, -397180800, 4871981, 2
            tz.transition 1957, 8, :o6, -389235600, 58465979, 24
            tz.transition 1958, 6, :o5, -365644800, 4872711, 2
            tz.transition 1958, 8, :o6, -357699600, 58474739, 24
            tz.transition 1959, 6, :o5, -334108800, 4873441, 2
            tz.transition 1959, 8, :o6, -326163600, 58483499, 24
            tz.transition 1960, 6, :o5, -302486400, 4874173, 2
            tz.transition 1960, 8, :o6, -294541200, 58492283, 24
            tz.transition 1961, 6, :o5, -270950400, 4874903, 2
            tz.transition 1961, 8, :o6, -263005200, 58501043, 24
            tz.transition 1962, 6, :o5, -239414400, 4875633, 2
            tz.transition 1962, 8, :o6, -231469200, 58509803, 24
          end
        end
      end
    end
  end
end
