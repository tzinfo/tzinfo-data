# encoding: UTF-8

module TZInfo
  module Data
    module Definitions
      module Pacific
        module Fiji
          include TimezoneDefinition
          
          timezone 'Pacific/Fiji' do |tz|
            tz.offset :o0, 42944, 0, :LMT
            tz.offset :o1, 43200, 0, :FJT
            tz.offset :o2, 43200, 3600, :FJST
            
            tz.transition 1915, 10, :o1, -1709985344, 1634037302, 675
            tz.transition 1998, 10, :o2, 909842400
            tz.transition 1999, 2, :o1, 920124000
            tz.transition 1999, 11, :o2, 941896800
            tz.transition 2000, 2, :o1, 951573600
            tz.transition 2009, 11, :o2, 1259416800
            tz.transition 2010, 3, :o1, 1269698400
            tz.transition 2010, 10, :o2, 1287842400
            tz.transition 2011, 3, :o1, 1299333600
            tz.transition 2011, 10, :o2, 1319292000
            tz.transition 2012, 1, :o1, 1327154400
            tz.transition 2012, 10, :o2, 1350741600
            tz.transition 2013, 1, :o1, 1358604000
            tz.transition 2013, 10, :o2, 1382191200
            tz.transition 2014, 1, :o1, 1390053600
            tz.transition 2014, 10, :o2, 1413640800
            tz.transition 2015, 1, :o1, 1421503200
            tz.transition 2015, 10, :o2, 1445090400
            tz.transition 2016, 1, :o1, 1453557600
            tz.transition 2016, 10, :o2, 1477144800
            tz.transition 2017, 1, :o1, 1485007200
            tz.transition 2017, 10, :o2, 1508594400
            tz.transition 2018, 1, :o1, 1516456800
            tz.transition 2018, 10, :o2, 1540044000
            tz.transition 2019, 1, :o1, 1547906400
            tz.transition 2019, 10, :o2, 1571493600
            tz.transition 2020, 1, :o1, 1579356000
            tz.transition 2020, 10, :o2, 1602943200
            tz.transition 2021, 1, :o1, 1611410400
            tz.transition 2021, 10, :o2, 1634997600
            tz.transition 2022, 1, :o1, 1642860000
            tz.transition 2022, 10, :o2, 1666447200
            tz.transition 2023, 1, :o1, 1674309600
            tz.transition 2023, 10, :o2, 1697896800
            tz.transition 2024, 1, :o1, 1705759200
            tz.transition 2024, 10, :o2, 1729346400
            tz.transition 2025, 1, :o1, 1737208800
            tz.transition 2025, 10, :o2, 1760796000
            tz.transition 2026, 1, :o1, 1768658400
            tz.transition 2026, 10, :o2, 1792245600
            tz.transition 2027, 1, :o1, 1800712800
            tz.transition 2027, 10, :o2, 1824300000
            tz.transition 2028, 1, :o1, 1832162400
            tz.transition 2028, 10, :o2, 1855749600
            tz.transition 2029, 1, :o1, 1863612000
            tz.transition 2029, 10, :o2, 1887199200
            tz.transition 2030, 1, :o1, 1895061600
            tz.transition 2030, 10, :o2, 1918648800
            tz.transition 2031, 1, :o1, 1926511200
            tz.transition 2031, 10, :o2, 1950098400
            tz.transition 2032, 1, :o1, 1957960800
            tz.transition 2032, 10, :o2, 1982152800
            tz.transition 2033, 1, :o1, 1990015200
            tz.transition 2033, 10, :o2, 2013602400
            tz.transition 2034, 1, :o1, 2021464800
            tz.transition 2034, 10, :o2, 2045052000
            tz.transition 2035, 1, :o1, 2052914400
            tz.transition 2035, 10, :o2, 2076501600
            tz.transition 2036, 1, :o1, 2084364000
            tz.transition 2036, 10, :o2, 2107951200
            tz.transition 2037, 1, :o1, 2115813600
            tz.transition 2037, 10, :o2, 2139400800
            tz.transition 2038, 1, :o1, 2147868000, 29585365, 12
            tz.transition 2038, 10, :o2, 2171455200, 29588641, 12
            tz.transition 2039, 1, :o1, 2179317600, 29589733, 12
            tz.transition 2039, 10, :o2, 2202904800, 29593009, 12
            tz.transition 2040, 1, :o1, 2210767200, 29594101, 12
            tz.transition 2040, 10, :o2, 2234354400, 29597377, 12
            tz.transition 2041, 1, :o1, 2242216800, 29598469, 12
            tz.transition 2041, 10, :o2, 2265804000, 29601745, 12
            tz.transition 2042, 1, :o1, 2273666400, 29602837, 12
            tz.transition 2042, 10, :o2, 2297253600, 29606113, 12
            tz.transition 2043, 1, :o1, 2305116000, 29607205, 12
            tz.transition 2043, 10, :o2, 2328703200, 29610481, 12
            tz.transition 2044, 1, :o1, 2337170400, 29611657, 12
            tz.transition 2044, 10, :o2, 2360757600, 29614933, 12
            tz.transition 2045, 1, :o1, 2368620000, 29616025, 12
            tz.transition 2045, 10, :o2, 2392207200, 29619301, 12
            tz.transition 2046, 1, :o1, 2400069600, 29620393, 12
            tz.transition 2046, 10, :o2, 2423656800, 29623669, 12
            tz.transition 2047, 1, :o1, 2431519200, 29624761, 12
            tz.transition 2047, 10, :o2, 2455106400, 29628037, 12
            tz.transition 2048, 1, :o1, 2462968800, 29629129, 12
            tz.transition 2048, 10, :o2, 2486556000, 29632405, 12
            tz.transition 2049, 1, :o1, 2495023200, 29633581, 12
            tz.transition 2049, 10, :o2, 2518610400, 29636857, 12
            tz.transition 2050, 1, :o1, 2526472800, 29637949, 12
            tz.transition 2050, 10, :o2, 2550060000, 29641225, 12
            tz.transition 2051, 1, :o1, 2557922400, 29642317, 12
            tz.transition 2051, 10, :o2, 2581509600, 29645593, 12
            tz.transition 2052, 1, :o1, 2589372000, 29646685, 12
            tz.transition 2052, 10, :o2, 2612959200, 29649961, 12
            tz.transition 2053, 1, :o1, 2620821600, 29651053, 12
            tz.transition 2053, 10, :o2, 2644408800, 29654329, 12
            tz.transition 2054, 1, :o1, 2652271200, 29655421, 12
            tz.transition 2054, 10, :o2, 2675858400, 29658697, 12
            tz.transition 2055, 1, :o1, 2684325600, 29659873, 12
            tz.transition 2055, 10, :o2, 2707912800, 29663149, 12
            tz.transition 2056, 1, :o1, 2715775200, 29664241, 12
            tz.transition 2056, 10, :o2, 2739362400, 29667517, 12
            tz.transition 2057, 1, :o1, 2747224800, 29668609, 12
            tz.transition 2057, 10, :o2, 2770812000, 29671885, 12
            tz.transition 2058, 1, :o1, 2778674400, 29672977, 12
            tz.transition 2058, 10, :o2, 2802261600, 29676253, 12
            tz.transition 2059, 1, :o1, 2810124000, 29677345, 12
            tz.transition 2059, 10, :o2, 2833711200, 29680621, 12
            tz.transition 2060, 1, :o1, 2841573600, 29681713, 12
            tz.transition 2060, 10, :o2, 2865765600, 29685073, 12
            tz.transition 2061, 1, :o1, 2873628000, 29686165, 12
            tz.transition 2061, 10, :o2, 2897215200, 29689441, 12
            tz.transition 2062, 1, :o1, 2905077600, 29690533, 12
            tz.transition 2062, 10, :o2, 2928664800, 29693809, 12
            tz.transition 2063, 1, :o1, 2936527200, 29694901, 12
          end
        end
      end
    end
  end
end
