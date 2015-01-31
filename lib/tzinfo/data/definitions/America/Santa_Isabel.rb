# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module America
        module Santa_Isabel
          include TimezoneDefinition
          
          timezone 'America/Santa_Isabel' do |tz|
            tz.offset :o0, -27568, 0, :LMT
            tz.offset :o1, -25200, 0, :MST
            tz.offset :o2, -28800, 0, :PST
            tz.offset :o3, -28800, 3600, :PDT
            tz.offset :o4, -28800, 3600, :PWT
            tz.offset :o5, -28800, 3600, :PPT
            
            tz.transition 1922, 1, :o1, -1514736000, 14538335, 6
            tz.transition 1924, 1, :o2, -1451667600, 58170859, 24
            tz.transition 1927, 6, :o1, -1343062800, 58201027, 24
            tz.transition 1930, 11, :o2, -1234803600, 58231099, 24
            tz.transition 1931, 4, :o3, -1222963200, 14558597, 6
            tz.transition 1931, 9, :o2, -1207242000, 58238755, 24
            tz.transition 1942, 4, :o4, -873820800, 14582843, 6
            tz.transition 1945, 8, :o5, -769395600, 58360379, 24
            tz.transition 1945, 11, :o2, -761677200, 58362523, 24
            tz.transition 1948, 4, :o3, -686073600, 14595881, 6
            tz.transition 1949, 1, :o2, -661539600, 58390339, 24
            tz.transition 1954, 4, :o3, -495036000, 29218295, 12
            tz.transition 1954, 9, :o2, -481734000, 19480095, 8
            tz.transition 1955, 4, :o3, -463586400, 29222663, 12
            tz.transition 1955, 9, :o2, -450284400, 19483007, 8
            tz.transition 1956, 4, :o3, -431532000, 29227115, 12
            tz.transition 1956, 9, :o2, -418230000, 19485975, 8
            tz.transition 1957, 4, :o3, -400082400, 29231483, 12
            tz.transition 1957, 9, :o2, -386780400, 19488887, 8
            tz.transition 1958, 4, :o3, -368632800, 29235851, 12
            tz.transition 1958, 9, :o2, -355330800, 19491799, 8
            tz.transition 1959, 4, :o3, -337183200, 29240219, 12
            tz.transition 1959, 9, :o2, -323881200, 19494711, 8
            tz.transition 1960, 4, :o3, -305733600, 29244587, 12
            tz.transition 1960, 9, :o2, -292431600, 19497623, 8
            tz.transition 1976, 4, :o3, 199274400
            tz.transition 1976, 10, :o2, 215600400
            tz.transition 1977, 4, :o3, 230724000
            tz.transition 1977, 10, :o2, 247050000
            tz.transition 1978, 4, :o3, 262778400
            tz.transition 1978, 10, :o2, 278499600
            tz.transition 1979, 4, :o3, 294228000
            tz.transition 1979, 10, :o2, 309949200
            tz.transition 1980, 4, :o3, 325677600
            tz.transition 1980, 10, :o2, 341398800
            tz.transition 1981, 4, :o3, 357127200
            tz.transition 1981, 10, :o2, 372848400
            tz.transition 1982, 4, :o3, 388576800
            tz.transition 1982, 10, :o2, 404902800
            tz.transition 1983, 4, :o3, 420026400
            tz.transition 1983, 10, :o2, 436352400
            tz.transition 1984, 4, :o3, 452080800
            tz.transition 1984, 10, :o2, 467802000
            tz.transition 1985, 4, :o3, 483530400
            tz.transition 1985, 10, :o2, 499251600
            tz.transition 1986, 4, :o3, 514980000
            tz.transition 1986, 10, :o2, 530701200
            tz.transition 1987, 4, :o3, 544615200
            tz.transition 1987, 10, :o2, 562150800
            tz.transition 1988, 4, :o3, 576064800
            tz.transition 1988, 10, :o2, 594205200
            tz.transition 1989, 4, :o3, 607514400
            tz.transition 1989, 10, :o2, 625654800
            tz.transition 1990, 4, :o3, 638964000
            tz.transition 1990, 10, :o2, 657104400
            tz.transition 1991, 4, :o3, 671018400
            tz.transition 1991, 10, :o2, 688554000
            tz.transition 1992, 4, :o3, 702468000
            tz.transition 1992, 10, :o2, 720003600
            tz.transition 1993, 4, :o3, 733917600
            tz.transition 1993, 10, :o2, 752058000
            tz.transition 1994, 4, :o3, 765367200
            tz.transition 1994, 10, :o2, 783507600
            tz.transition 1995, 4, :o3, 796816800
            tz.transition 1995, 10, :o2, 814957200
            tz.transition 1996, 4, :o3, 828871200
            tz.transition 1996, 10, :o2, 846406800
            tz.transition 1997, 4, :o3, 860320800
            tz.transition 1997, 10, :o2, 877856400
            tz.transition 1998, 4, :o3, 891770400
            tz.transition 1998, 10, :o2, 909306000
            tz.transition 1999, 4, :o3, 923220000
            tz.transition 1999, 10, :o2, 941360400
            tz.transition 2000, 4, :o3, 954669600
            tz.transition 2000, 10, :o2, 972810000
            tz.transition 2001, 4, :o3, 986119200
            tz.transition 2001, 10, :o2, 1004259600
            tz.transition 2002, 4, :o3, 1018173600
            tz.transition 2002, 10, :o2, 1035709200
            tz.transition 2003, 4, :o3, 1049623200
            tz.transition 2003, 10, :o2, 1067158800
            tz.transition 2004, 4, :o3, 1081072800
            tz.transition 2004, 10, :o2, 1099213200
            tz.transition 2005, 4, :o3, 1112522400
            tz.transition 2005, 10, :o2, 1130662800
            tz.transition 2006, 4, :o3, 1143972000
            tz.transition 2006, 10, :o2, 1162112400
            tz.transition 2007, 4, :o3, 1175421600
            tz.transition 2007, 10, :o2, 1193562000
            tz.transition 2008, 4, :o3, 1207476000
            tz.transition 2008, 10, :o2, 1225011600
            tz.transition 2009, 4, :o3, 1238925600
            tz.transition 2009, 10, :o2, 1256461200
            tz.transition 2010, 4, :o3, 1270375200
            tz.transition 2010, 10, :o2, 1288515600
            tz.transition 2011, 4, :o3, 1301824800
            tz.transition 2011, 10, :o2, 1319965200
            tz.transition 2012, 4, :o3, 1333274400
            tz.transition 2012, 10, :o2, 1351414800
            tz.transition 2013, 4, :o3, 1365328800
            tz.transition 2013, 10, :o2, 1382864400
            tz.transition 2014, 4, :o3, 1396778400
            tz.transition 2014, 10, :o2, 1414314000
            tz.transition 2015, 4, :o3, 1428228000
            tz.transition 2015, 10, :o2, 1445763600
            tz.transition 2016, 4, :o3, 1459677600
            tz.transition 2016, 10, :o2, 1477818000
            tz.transition 2017, 4, :o3, 1491127200
            tz.transition 2017, 10, :o2, 1509267600
            tz.transition 2018, 4, :o3, 1522576800
            tz.transition 2018, 10, :o2, 1540717200
            tz.transition 2019, 4, :o3, 1554631200
            tz.transition 2019, 10, :o2, 1572166800
            tz.transition 2020, 4, :o3, 1586080800
            tz.transition 2020, 10, :o2, 1603616400
            tz.transition 2021, 4, :o3, 1617530400
            tz.transition 2021, 10, :o2, 1635670800
            tz.transition 2022, 4, :o3, 1648980000
            tz.transition 2022, 10, :o2, 1667120400
            tz.transition 2023, 4, :o3, 1680429600
            tz.transition 2023, 10, :o2, 1698570000
            tz.transition 2024, 4, :o3, 1712484000
            tz.transition 2024, 10, :o2, 1730019600
            tz.transition 2025, 4, :o3, 1743933600
            tz.transition 2025, 10, :o2, 1761469200
            tz.transition 2026, 4, :o3, 1775383200
            tz.transition 2026, 10, :o2, 1792918800
            tz.transition 2027, 4, :o3, 1806832800
            tz.transition 2027, 10, :o2, 1824973200
            tz.transition 2028, 4, :o3, 1838282400
            tz.transition 2028, 10, :o2, 1856422800
            tz.transition 2029, 4, :o3, 1869732000
            tz.transition 2029, 10, :o2, 1887872400
            tz.transition 2030, 4, :o3, 1901786400
            tz.transition 2030, 10, :o2, 1919322000
            tz.transition 2031, 4, :o3, 1933236000
            tz.transition 2031, 10, :o2, 1950771600
            tz.transition 2032, 4, :o3, 1964685600
            tz.transition 2032, 10, :o2, 1982826000
            tz.transition 2033, 4, :o3, 1996135200
            tz.transition 2033, 10, :o2, 2014275600
            tz.transition 2034, 4, :o3, 2027584800
            tz.transition 2034, 10, :o2, 2045725200
            tz.transition 2035, 4, :o3, 2059034400
            tz.transition 2035, 10, :o2, 2077174800
            tz.transition 2036, 4, :o3, 2091088800
            tz.transition 2036, 10, :o2, 2108624400
            tz.transition 2037, 4, :o3, 2122538400
            tz.transition 2037, 10, :o2, 2140074000
            tz.transition 2038, 4, :o3, 2153988000, 29586215, 12
            tz.transition 2038, 10, :o2, 2172128400, 19725823, 8
            tz.transition 2039, 4, :o3, 2185437600, 29590583, 12
            tz.transition 2039, 10, :o2, 2203578000, 19728735, 8
            tz.transition 2040, 4, :o3, 2216887200, 29594951, 12
            tz.transition 2040, 10, :o2, 2235027600, 19731647, 8
            tz.transition 2041, 4, :o3, 2248941600, 29599403, 12
            tz.transition 2041, 10, :o2, 2266477200, 19734559, 8
            tz.transition 2042, 4, :o3, 2280391200, 29603771, 12
            tz.transition 2042, 10, :o2, 2297926800, 19737471, 8
            tz.transition 2043, 4, :o3, 2311840800, 29608139, 12
            tz.transition 2043, 10, :o2, 2329376400, 19740383, 8
            tz.transition 2044, 4, :o3, 2343290400, 29612507, 12
            tz.transition 2044, 10, :o2, 2361430800, 19743351, 8
            tz.transition 2045, 4, :o3, 2374740000, 29616875, 12
            tz.transition 2045, 10, :o2, 2392880400, 19746263, 8
            tz.transition 2046, 4, :o3, 2406189600, 29621243, 12
            tz.transition 2046, 10, :o2, 2424330000, 19749175, 8
            tz.transition 2047, 4, :o3, 2438244000, 29625695, 12
            tz.transition 2047, 10, :o2, 2455779600, 19752087, 8
            tz.transition 2048, 4, :o3, 2469693600, 29630063, 12
            tz.transition 2048, 10, :o2, 2487229200, 19754999, 8
            tz.transition 2049, 4, :o3, 2501143200, 29634431, 12
            tz.transition 2049, 10, :o2, 2519283600, 19757967, 8
            tz.transition 2050, 4, :o3, 2532592800, 29638799, 12
            tz.transition 2050, 10, :o2, 2550733200, 19760879, 8
            tz.transition 2051, 4, :o3, 2564042400, 29643167, 12
            tz.transition 2051, 10, :o2, 2582182800, 19763791, 8
            tz.transition 2052, 4, :o3, 2596096800, 29647619, 12
            tz.transition 2052, 10, :o2, 2613632400, 19766703, 8
            tz.transition 2053, 4, :o3, 2627546400, 29651987, 12
            tz.transition 2053, 10, :o2, 2645082000, 19769615, 8
            tz.transition 2054, 4, :o3, 2658996000, 29656355, 12
            tz.transition 2054, 10, :o2, 2676531600, 19772527, 8
            tz.transition 2055, 4, :o3, 2690445600, 29660723, 12
            tz.transition 2055, 10, :o2, 2708586000, 19775495, 8
            tz.transition 2056, 4, :o3, 2721895200, 29665091, 12
            tz.transition 2056, 10, :o2, 2740035600, 19778407, 8
            tz.transition 2057, 4, :o3, 2753344800, 29669459, 12
            tz.transition 2057, 10, :o2, 2771485200, 19781319, 8
            tz.transition 2058, 4, :o3, 2785399200, 29673911, 12
            tz.transition 2058, 10, :o2, 2802934800, 19784231, 8
            tz.transition 2059, 4, :o3, 2816848800, 29678279, 12
            tz.transition 2059, 10, :o2, 2834384400, 19787143, 8
            tz.transition 2060, 4, :o3, 2848298400, 29682647, 12
            tz.transition 2060, 10, :o2, 2866438800, 19790111, 8
            tz.transition 2061, 4, :o3, 2879748000, 29687015, 12
            tz.transition 2061, 10, :o2, 2897888400, 19793023, 8
            tz.transition 2062, 4, :o3, 2911197600, 29691383, 12
            tz.transition 2062, 10, :o2, 2929338000, 19795935, 8
            tz.transition 2063, 4, :o3, 2942647200, 29695751, 12
            tz.transition 2063, 10, :o2, 2960787600, 19798847, 8
            tz.transition 2064, 4, :o3, 2974701600, 29700203, 12
            tz.transition 2064, 10, :o2, 2992237200, 19801759, 8
            tz.transition 2065, 4, :o3, 3006151200, 29704571, 12
            tz.transition 2065, 10, :o2, 3023686800, 19804671, 8
          end
        end
      end
    end
  end
end
