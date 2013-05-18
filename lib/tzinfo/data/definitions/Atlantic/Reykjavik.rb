# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Atlantic
        module Reykjavik
          include TimezoneDefinition
          
          timezone 'Atlantic/Reykjavik' do |tz|
            tz.offset :o0, -5244, 0, :LMT
            tz.offset :o1, -5268, 0, :RMT
            tz.offset :o2, -3600, 0, :IST
            tz.offset :o3, -3600, 3600, :ISST
            tz.offset :o4, 0, 0, :GMT
            
            tz.transition 1837, 1, :o1, -4197047556, 17222476037, 7200
            tz.transition 1908, 1, :o2, -1956609132, 17409179239, 7200
            tz.transition 1917, 2, :o3, -1668211200, 4842559, 2
            tz.transition 1917, 10, :o2, -1647212400, 58116541, 24
            tz.transition 1918, 2, :o3, -1636675200, 4843289, 2
            tz.transition 1918, 11, :o2, -1613430000, 58125925, 24
            tz.transition 1939, 4, :o3, -968025600, 4858767, 2
            tz.transition 1939, 11, :o2, -949615200, 29155159, 12
            tz.transition 1940, 2, :o3, -942008400, 19437477, 8
            tz.transition 1940, 11, :o2, -920239200, 29159239, 12
            tz.transition 1941, 3, :o3, -909957600, 29160667, 12
            tz.transition 1941, 11, :o2, -888789600, 29163607, 12
            tz.transition 1942, 3, :o3, -877903200, 29165119, 12
            tz.transition 1942, 10, :o2, -857944800, 29167891, 12
            tz.transition 1943, 3, :o3, -846453600, 29169487, 12
            tz.transition 1943, 10, :o2, -826495200, 29172259, 12
            tz.transition 1944, 3, :o3, -815004000, 29173855, 12
            tz.transition 1944, 10, :o2, -795045600, 29176627, 12
            tz.transition 1945, 3, :o3, -783554400, 29178223, 12
            tz.transition 1945, 10, :o2, -762991200, 29181079, 12
            tz.transition 1946, 3, :o3, -752104800, 29182591, 12
            tz.transition 1946, 10, :o2, -731541600, 29185447, 12
            tz.transition 1947, 4, :o3, -717631200, 29187379, 12
            tz.transition 1947, 10, :o2, -700092000, 29189815, 12
            tz.transition 1948, 4, :o3, -686181600, 29191747, 12
            tz.transition 1948, 10, :o2, -668642400, 29194183, 12
            tz.transition 1949, 4, :o3, -654732000, 29196115, 12
            tz.transition 1949, 10, :o2, -636588000, 29198635, 12
            tz.transition 1950, 4, :o3, -623282400, 29200483, 12
            tz.transition 1950, 10, :o2, -605743200, 29202919, 12
            tz.transition 1951, 4, :o3, -591832800, 29204851, 12
            tz.transition 1951, 10, :o2, -573688800, 29207371, 12
            tz.transition 1952, 4, :o3, -559778400, 29209303, 12
            tz.transition 1952, 10, :o2, -542239200, 29211739, 12
            tz.transition 1953, 4, :o3, -528328800, 29213671, 12
            tz.transition 1953, 10, :o2, -510789600, 29216107, 12
            tz.transition 1954, 4, :o3, -496879200, 29218039, 12
            tz.transition 1954, 10, :o2, -479340000, 29220475, 12
            tz.transition 1955, 4, :o3, -465429600, 29222407, 12
            tz.transition 1955, 10, :o2, -447890400, 29224843, 12
            tz.transition 1956, 4, :o3, -433980000, 29226775, 12
            tz.transition 1956, 10, :o2, -415836000, 29229295, 12
            tz.transition 1957, 4, :o3, -401925600, 29231227, 12
            tz.transition 1957, 10, :o2, -384386400, 29233663, 12
            tz.transition 1958, 4, :o3, -370476000, 29235595, 12
            tz.transition 1958, 10, :o2, -352936800, 29238031, 12
            tz.transition 1959, 4, :o3, -339026400, 29239963, 12
            tz.transition 1959, 10, :o2, -321487200, 29242399, 12
            tz.transition 1960, 4, :o3, -307576800, 29244331, 12
            tz.transition 1960, 10, :o2, -290037600, 29246767, 12
            tz.transition 1961, 4, :o3, -276127200, 29248699, 12
            tz.transition 1961, 10, :o2, -258588000, 29251135, 12
            tz.transition 1962, 4, :o3, -244677600, 29253067, 12
            tz.transition 1962, 10, :o2, -226533600, 29255587, 12
            tz.transition 1963, 4, :o3, -212623200, 29257519, 12
            tz.transition 1963, 10, :o2, -195084000, 29259955, 12
            tz.transition 1964, 4, :o3, -181173600, 29261887, 12
            tz.transition 1964, 10, :o2, -163634400, 29264323, 12
            tz.transition 1965, 4, :o3, -149724000, 29266255, 12
            tz.transition 1965, 10, :o2, -132184800, 29268691, 12
            tz.transition 1966, 4, :o3, -118274400, 29270623, 12
            tz.transition 1966, 10, :o2, -100735200, 29273059, 12
            tz.transition 1967, 4, :o3, -86824800, 29274991, 12
            tz.transition 1967, 10, :o2, -68680800, 29277511, 12
            tz.transition 1968, 4, :o4, -54770400, 29279443, 12
          end
        end
      end
    end
  end
end
