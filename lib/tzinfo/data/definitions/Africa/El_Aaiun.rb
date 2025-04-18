# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (https://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module El_Aaiun
          include TimezoneDefinition
          
          timezone 'Africa/El_Aaiun' do |tz|
            tz.offset :o0, -3168, 0, :LMT
            tz.offset :o1, -3600, 0, :'-01'
            tz.offset :o2, 0, 0, :'+00'
            tz.offset :o3, 0, 3600, :'+01'
            tz.offset :o4, 3600, 0, :'+01'
            tz.offset :o5, 3600, -3600, :'+00'
            
            tz.transition 1934, 1, :o1, -1136070432, 728231561, 300
            tz.transition 1976, 4, :o2, 198291600
            tz.transition 1976, 5, :o3, 199756800
            tz.transition 1976, 7, :o2, 207702000
            tz.transition 1977, 5, :o3, 231292800
            tz.transition 1977, 9, :o2, 244249200
            tz.transition 1978, 6, :o3, 265507200
            tz.transition 1978, 8, :o2, 271033200
            tz.transition 2008, 6, :o3, 1212278400
            tz.transition 2008, 8, :o2, 1220223600
            tz.transition 2009, 6, :o3, 1243814400
            tz.transition 2009, 8, :o2, 1250809200
            tz.transition 2010, 5, :o3, 1272758400
            tz.transition 2010, 8, :o2, 1281222000
            tz.transition 2011, 4, :o3, 1301788800
            tz.transition 2011, 7, :o2, 1312066800
            tz.transition 2012, 4, :o3, 1335664800
            tz.transition 2012, 7, :o2, 1342749600
            tz.transition 2012, 8, :o3, 1345428000
            tz.transition 2012, 9, :o2, 1348970400
            tz.transition 2013, 4, :o3, 1367114400
            tz.transition 2013, 7, :o2, 1373162400
            tz.transition 2013, 8, :o3, 1376100000
            tz.transition 2013, 10, :o2, 1382839200
            tz.transition 2014, 3, :o3, 1396144800
            tz.transition 2014, 6, :o2, 1403920800
            tz.transition 2014, 8, :o3, 1406944800
            tz.transition 2014, 10, :o2, 1414288800
            tz.transition 2015, 3, :o3, 1427594400
            tz.transition 2015, 6, :o2, 1434247200
            tz.transition 2015, 7, :o3, 1437271200
            tz.transition 2015, 10, :o2, 1445738400
            tz.transition 2016, 3, :o3, 1459044000
            tz.transition 2016, 6, :o2, 1465092000
            tz.transition 2016, 7, :o3, 1468116000
            tz.transition 2016, 10, :o2, 1477792800
            tz.transition 2017, 3, :o3, 1490493600
            tz.transition 2017, 5, :o2, 1495332000
            tz.transition 2017, 7, :o3, 1498960800
            tz.transition 2017, 10, :o2, 1509242400
            tz.transition 2018, 3, :o3, 1521943200
            tz.transition 2018, 5, :o2, 1526176800
            tz.transition 2018, 6, :o3, 1529200800
            tz.transition 2018, 10, :o4, 1540692000
            tz.transition 2019, 5, :o5, 1557021600
            tz.transition 2019, 6, :o4, 1560045600
            tz.transition 2020, 4, :o5, 1587261600
            tz.transition 2020, 5, :o4, 1590890400
            tz.transition 2021, 4, :o5, 1618106400
            tz.transition 2021, 5, :o4, 1621130400
            tz.transition 2022, 3, :o5, 1648346400
            tz.transition 2022, 5, :o4, 1651975200
            tz.transition 2023, 3, :o5, 1679191200
            tz.transition 2023, 4, :o4, 1682215200
            tz.transition 2024, 3, :o5, 1710036000
            tz.transition 2024, 4, :o4, 1713060000
            tz.transition 2025, 2, :o5, 1740276000
            tz.transition 2025, 4, :o4, 1743904800
            tz.transition 2026, 2, :o5, 1771120800
            tz.transition 2026, 3, :o4, 1774144800
            tz.transition 2027, 2, :o5, 1801965600
            tz.transition 2027, 3, :o4, 1804989600
            tz.transition 2028, 1, :o5, 1832205600
            tz.transition 2028, 3, :o4, 1835834400
            tz.transition 2029, 1, :o5, 1863050400
            tz.transition 2029, 2, :o4, 1866074400
            tz.transition 2029, 12, :o5, 1893290400
            tz.transition 2030, 2, :o4, 1896919200
            tz.transition 2030, 12, :o5, 1924135200
            tz.transition 2031, 1, :o4, 1927159200
            tz.transition 2031, 12, :o5, 1954980000
            tz.transition 2032, 1, :o4, 1958004000
            tz.transition 2032, 11, :o5, 1985220000
            tz.transition 2033, 1, :o4, 1988848800
            tz.transition 2033, 11, :o5, 2016064800
            tz.transition 2033, 12, :o4, 2019088800
            tz.transition 2034, 11, :o5, 2046304800
            tz.transition 2034, 12, :o4, 2049933600
            tz.transition 2035, 10, :o5, 2077149600
            tz.transition 2035, 12, :o4, 2080778400
            tz.transition 2036, 10, :o5, 2107994400
            tz.transition 2036, 11, :o4, 2111018400
            tz.transition 2037, 10, :o5, 2138234400
            tz.transition 2037, 11, :o4, 2141863200
            tz.transition 2038, 9, :o5, 2169079200, 29588311, 12
            tz.transition 2038, 10, :o4, 2172103200, 29588731, 12
            tz.transition 2039, 9, :o5, 2199924000, 29592595, 12
            tz.transition 2039, 10, :o4, 2202948000, 29593015, 12
            tz.transition 2040, 9, :o5, 2230164000, 29596795, 12
            tz.transition 2040, 10, :o4, 2233792800, 29597299, 12
            tz.transition 2041, 8, :o5, 2261008800, 29601079, 12
            tz.transition 2041, 9, :o4, 2264032800, 29601499, 12
            tz.transition 2042, 8, :o5, 2291248800, 29605279, 12
            tz.transition 2042, 9, :o4, 2294877600, 29605783, 12
            tz.transition 2043, 8, :o5, 2322093600, 29609563, 12
            tz.transition 2043, 9, :o4, 2325722400, 29610067, 12
            tz.transition 2044, 7, :o5, 2352938400, 29613847, 12
            tz.transition 2044, 8, :o4, 2355962400, 29614267, 12
            tz.transition 2045, 7, :o5, 2383178400, 29618047, 12
            tz.transition 2045, 8, :o4, 2386807200, 29618551, 12
            tz.transition 2046, 7, :o5, 2414023200, 29622331, 12
            tz.transition 2046, 8, :o4, 2417047200, 29622751, 12
            tz.transition 2047, 6, :o5, 2444868000, 29626615, 12
            tz.transition 2047, 7, :o4, 2447892000, 29627035, 12
            tz.transition 2048, 6, :o5, 2475108000, 29630815, 12
            tz.transition 2048, 7, :o4, 2478736800, 29631319, 12
            tz.transition 2049, 5, :o5, 2505952800, 29635099, 12
            tz.transition 2049, 7, :o4, 2508976800, 29635519, 12
            tz.transition 2050, 5, :o5, 2536192800, 29639299, 12
            tz.transition 2050, 6, :o4, 2539821600, 29639803, 12
            tz.transition 2051, 5, :o5, 2567037600, 29643583, 12
            tz.transition 2051, 6, :o4, 2570666400, 29644087, 12
            tz.transition 2052, 4, :o5, 2597882400, 29647867, 12
            tz.transition 2052, 6, :o4, 2600906400, 29648287, 12
            tz.transition 2053, 4, :o5, 2628122400, 29652067, 12
            tz.transition 2053, 5, :o4, 2631751200, 29652571, 12
            tz.transition 2054, 4, :o5, 2658967200, 29656351, 12
            tz.transition 2054, 5, :o4, 2661991200, 29656771, 12
            tz.transition 2055, 3, :o5, 2689812000, 29660635, 12
            tz.transition 2055, 5, :o4, 2692836000, 29661055, 12
            tz.transition 2056, 3, :o5, 2720052000, 29664835, 12
            tz.transition 2056, 4, :o4, 2723680800, 29665339, 12
            tz.transition 2057, 3, :o5, 2750896800, 29669119, 12
            tz.transition 2057, 4, :o4, 2753920800, 29669539, 12
            tz.transition 2058, 2, :o5, 2781136800, 29673319, 12
            tz.transition 2058, 3, :o4, 2784765600, 29673823, 12
            tz.transition 2059, 2, :o5, 2811981600, 29677603, 12
            tz.transition 2059, 3, :o4, 2815610400, 29678107, 12
            tz.transition 2060, 2, :o5, 2842826400, 29681887, 12
            tz.transition 2060, 3, :o4, 2845850400, 29682307, 12
            tz.transition 2061, 1, :o5, 2873066400, 29686087, 12
            tz.transition 2061, 2, :o4, 2876695200, 29686591, 12
            tz.transition 2062, 1, :o5, 2903911200, 29690371, 12
            tz.transition 2062, 2, :o4, 2906935200, 29690791, 12
            tz.transition 2062, 12, :o5, 2934756000, 29694655, 12
            tz.transition 2063, 2, :o4, 2937780000, 29695075, 12
            tz.transition 2063, 12, :o5, 2964996000, 29698855, 12
            tz.transition 2064, 1, :o4, 2968624800, 29699359, 12
            tz.transition 2064, 12, :o5, 2995840800, 29703139, 12
            tz.transition 2065, 1, :o4, 2998864800, 29703559, 12
            tz.transition 2065, 11, :o5, 3026080800, 29707339, 12
            tz.transition 2066, 1, :o4, 3029709600, 29707843, 12
            tz.transition 2066, 11, :o5, 3056925600, 29711623, 12
            tz.transition 2066, 12, :o4, 3060554400, 29712127, 12
            tz.transition 2067, 11, :o5, 3087770400, 29715907, 12
            tz.transition 2067, 12, :o4, 3090794400, 29716327, 12
            tz.transition 2068, 10, :o5, 3118010400, 29720107, 12
            tz.transition 2068, 12, :o4, 3121639200, 29720611, 12
            tz.transition 2069, 10, :o5, 3148855200, 29724391, 12
            tz.transition 2069, 11, :o4, 3151879200, 29724811, 12
            tz.transition 2070, 10, :o5, 3179700000, 29728675, 12
            tz.transition 2070, 11, :o4, 3182724000, 29729095, 12
            tz.transition 2071, 9, :o5, 3209940000, 29732875, 12
            tz.transition 2071, 11, :o4, 3213568800, 29733379, 12
            tz.transition 2072, 9, :o5, 3240784800, 29737159, 12
            tz.transition 2072, 10, :o4, 3243808800, 29737579, 12
            tz.transition 2073, 8, :o5, 3271024800, 29741359, 12
            tz.transition 2073, 10, :o4, 3274653600, 29741863, 12
            tz.transition 2074, 8, :o5, 3301869600, 29745643, 12
            tz.transition 2074, 9, :o4, 3305498400, 29746147, 12
            tz.transition 2075, 8, :o5, 3332714400, 29749927, 12
            tz.transition 2075, 9, :o4, 3335738400, 29750347, 12
          end
        end
      end
    end
  end
end
