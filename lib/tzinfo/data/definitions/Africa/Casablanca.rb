# encoding: UTF-8

module TZInfo
  module Data
    module Definitions
      module Africa
        module Casablanca
          include TimezoneDefinition
          
          timezone 'Africa/Casablanca' do |tz|
            tz.offset :o0, -1820, 0, :LMT
            tz.offset :o1, 0, 0, :WET
            tz.offset :o2, 0, 3600, :WEST
            tz.offset :o3, 3600, 0, :CET
            
            tz.transition 1913, 10, :o1, 10454687371, 4320
            tz.transition 1939, 9, :o2, 4859037, 2
            tz.transition 1939, 11, :o1, 58310075, 24
            tz.transition 1940, 2, :o2, 4859369, 2
            tz.transition 1945, 11, :o1, 58362659, 24
            tz.transition 1950, 6, :o2, 4866887, 2
            tz.transition 1950, 10, :o1, 58406003, 24
            tz.transition 1967, 6, :o2, 2439645, 1
            tz.transition 1967, 9, :o1, 58554347, 24
            tz.transition 1974, 6, :o2, 141264000
            tz.transition 1974, 8, :o1, 147222000
            tz.transition 1976, 5, :o2, 199756800
            tz.transition 1976, 7, :o1, 207702000
            tz.transition 1977, 5, :o2, 231292800
            tz.transition 1977, 9, :o1, 244249200
            tz.transition 1978, 6, :o2, 265507200
            tz.transition 1978, 8, :o1, 271033200
            tz.transition 1984, 3, :o3, 448243200
            tz.transition 1985, 12, :o1, 504918000
            tz.transition 2008, 6, :o2, 1212278400
            tz.transition 2008, 8, :o1, 1220223600
            tz.transition 2009, 6, :o2, 1243814400
            tz.transition 2009, 8, :o1, 1250809200
            tz.transition 2010, 5, :o2, 1272758400
            tz.transition 2010, 8, :o1, 1281222000
            tz.transition 2011, 4, :o2, 1301788800
            tz.transition 2011, 7, :o1, 1312066800
            tz.transition 2012, 4, :o2, 1335664800
            tz.transition 2012, 7, :o1, 1342749600
            tz.transition 2012, 8, :o2, 1345428000
            tz.transition 2012, 9, :o1, 1348970400
            tz.transition 2013, 4, :o2, 1367114400
            tz.transition 2013, 9, :o1, 1380420000
            tz.transition 2014, 4, :o2, 1398564000
            tz.transition 2014, 9, :o1, 1411869600
            tz.transition 2015, 4, :o2, 1430013600
            tz.transition 2015, 9, :o1, 1443319200
            tz.transition 2016, 4, :o2, 1461463200
            tz.transition 2016, 9, :o1, 1474768800
            tz.transition 2017, 4, :o2, 1493517600
            tz.transition 2017, 9, :o1, 1506218400
            tz.transition 2018, 4, :o2, 1524967200
            tz.transition 2018, 9, :o1, 1538272800
            tz.transition 2019, 4, :o2, 1556416800
            tz.transition 2019, 9, :o1, 1569722400
            tz.transition 2020, 4, :o2, 1587866400
            tz.transition 2020, 9, :o1, 1601172000
            tz.transition 2021, 4, :o2, 1619316000
            tz.transition 2021, 9, :o1, 1632621600
            tz.transition 2022, 4, :o2, 1650765600
            tz.transition 2022, 9, :o1, 1664071200
            tz.transition 2023, 4, :o2, 1682820000
            tz.transition 2023, 9, :o1, 1695520800
            tz.transition 2024, 4, :o2, 1714269600
            tz.transition 2024, 9, :o1, 1727575200
            tz.transition 2025, 4, :o2, 1745719200
            tz.transition 2025, 9, :o1, 1759024800
            tz.transition 2026, 4, :o2, 1777168800
            tz.transition 2026, 9, :o1, 1790474400
            tz.transition 2027, 4, :o2, 1808618400
            tz.transition 2027, 9, :o1, 1821924000
            tz.transition 2028, 4, :o2, 1840672800
            tz.transition 2028, 9, :o1, 1853373600
            tz.transition 2029, 4, :o2, 1872122400
            tz.transition 2029, 9, :o1, 1885428000
            tz.transition 2030, 4, :o2, 1903572000
            tz.transition 2030, 9, :o1, 1916877600
            tz.transition 2031, 4, :o2, 1935021600
            tz.transition 2031, 9, :o1, 1948327200
            tz.transition 2032, 4, :o2, 1966471200
            tz.transition 2032, 9, :o1, 1979776800
            tz.transition 2033, 4, :o2, 1997920800
            tz.transition 2033, 9, :o1, 2011226400
            tz.transition 2034, 4, :o2, 2029975200
            tz.transition 2034, 9, :o1, 2042676000
            tz.transition 2035, 4, :o2, 2061424800
            tz.transition 2035, 9, :o1, 2074730400
            tz.transition 2036, 4, :o2, 2092874400
            tz.transition 2036, 9, :o1, 2106180000
            tz.transition 2037, 4, :o2, 2124324000
            tz.transition 2037, 9, :o1, 2137629600
            tz.transition 2038, 4, :o2, 29586463, 12
            tz.transition 2038, 9, :o1, 29588311, 12
            tz.transition 2039, 4, :o2, 29590831, 12
            tz.transition 2039, 9, :o1, 29592679, 12
            tz.transition 2040, 4, :o2, 29595283, 12
            tz.transition 2040, 9, :o1, 29597131, 12
            tz.transition 2041, 4, :o2, 29599651, 12
            tz.transition 2041, 9, :o1, 29601499, 12
            tz.transition 2042, 4, :o2, 29604019, 12
            tz.transition 2042, 9, :o1, 29605867, 12
            tz.transition 2043, 4, :o2, 29608387, 12
            tz.transition 2043, 9, :o1, 29610235, 12
            tz.transition 2044, 4, :o2, 29612755, 12
            tz.transition 2044, 9, :o1, 29614603, 12
            tz.transition 2045, 4, :o2, 29617207, 12
            tz.transition 2045, 9, :o1, 29618971, 12
            tz.transition 2046, 4, :o2, 29621575, 12
            tz.transition 2046, 9, :o1, 29623423, 12
            tz.transition 2047, 4, :o2, 29625943, 12
            tz.transition 2047, 9, :o1, 29627791, 12
            tz.transition 2048, 4, :o2, 29630311, 12
            tz.transition 2048, 9, :o1, 29632159, 12
            tz.transition 2049, 4, :o2, 29634679, 12
            tz.transition 2049, 9, :o1, 29636527, 12
            tz.transition 2050, 4, :o2, 29639047, 12
            tz.transition 2050, 9, :o1, 29640895, 12
            tz.transition 2051, 4, :o2, 29643499, 12
            tz.transition 2051, 9, :o1, 29645263, 12
            tz.transition 2052, 4, :o2, 29647867, 12
            tz.transition 2052, 9, :o1, 29649715, 12
            tz.transition 2053, 4, :o2, 29652235, 12
            tz.transition 2053, 9, :o1, 29654083, 12
            tz.transition 2054, 4, :o2, 29656603, 12
            tz.transition 2054, 9, :o1, 29658451, 12
            tz.transition 2055, 4, :o2, 29660971, 12
            tz.transition 2055, 9, :o1, 29662819, 12
            tz.transition 2056, 4, :o2, 29665423, 12
            tz.transition 2056, 9, :o1, 29667187, 12
            tz.transition 2057, 4, :o2, 29669791, 12
            tz.transition 2057, 9, :o1, 29671639, 12
            tz.transition 2058, 4, :o2, 29674159, 12
            tz.transition 2058, 9, :o1, 29676007, 12
            tz.transition 2059, 4, :o2, 29678527, 12
            tz.transition 2059, 9, :o1, 29680375, 12
            tz.transition 2060, 4, :o2, 29682895, 12
            tz.transition 2060, 9, :o1, 29684743, 12
            tz.transition 2061, 4, :o2, 29687263, 12
            tz.transition 2061, 9, :o1, 29689111, 12
            tz.transition 2062, 4, :o2, 29691715, 12
            tz.transition 2062, 9, :o1, 29693479, 12
            tz.transition 2063, 4, :o2, 29696083, 12
            tz.transition 2063, 9, :o1, 29697931, 12
          end
        end
      end
    end
  end
end
