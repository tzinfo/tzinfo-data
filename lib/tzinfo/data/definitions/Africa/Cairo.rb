# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Cairo
          include TimezoneDefinition
          
          timezone 'Africa/Cairo' do |tz|
            tz.offset :o0, 7509, 0, :LMT
            tz.offset :o1, 7200, 0, :EET
            tz.offset :o2, 7200, 3600, :EEST
            
            tz.transition 1900, 9, :o1, -2185409109, 69560450297, 28800
            tz.transition 1940, 7, :o2, -929844000, 29157905, 12
            tz.transition 1940, 9, :o1, -923108400, 19439227, 8
            tz.transition 1941, 4, :o2, -906170400, 29161193, 12
            tz.transition 1941, 9, :o1, -892868400, 19442027, 8
            tz.transition 1942, 3, :o2, -875844000, 29165405, 12
            tz.transition 1942, 10, :o1, -857790000, 19445275, 8
            tz.transition 1943, 3, :o2, -844308000, 29169785, 12
            tz.transition 1943, 10, :o1, -825822000, 19448235, 8
            tz.transition 1944, 3, :o2, -812685600, 29174177, 12
            tz.transition 1944, 10, :o1, -794199600, 19451163, 8
            tz.transition 1945, 4, :o2, -779853600, 29178737, 12
            tz.transition 1945, 10, :o1, -762663600, 19454083, 8
            tz.transition 1957, 5, :o2, -399088800, 29231621, 12
            tz.transition 1957, 9, :o1, -386650800, 19488899, 8
            tz.transition 1958, 4, :o2, -368330400, 29235893, 12
            tz.transition 1958, 9, :o1, -355114800, 19491819, 8
            tz.transition 1959, 4, :o2, -336790800, 58480547, 24
            tz.transition 1959, 9, :o1, -323654400, 4873683, 2
            tz.transition 1960, 4, :o2, -305168400, 58489331, 24
            tz.transition 1960, 9, :o1, -292032000, 4874415, 2
            tz.transition 1961, 4, :o2, -273632400, 58498091, 24
            tz.transition 1961, 9, :o1, -260496000, 4875145, 2
            tz.transition 1962, 4, :o2, -242096400, 58506851, 24
            tz.transition 1962, 9, :o1, -228960000, 4875875, 2
            tz.transition 1963, 4, :o2, -210560400, 58515611, 24
            tz.transition 1963, 9, :o1, -197424000, 4876605, 2
            tz.transition 1964, 4, :o2, -178938000, 58524395, 24
            tz.transition 1964, 9, :o1, -165801600, 4877337, 2
            tz.transition 1965, 4, :o2, -147402000, 58533155, 24
            tz.transition 1965, 9, :o1, -134265600, 4878067, 2
            tz.transition 1966, 4, :o2, -115866000, 58541915, 24
            tz.transition 1966, 10, :o1, -102643200, 4878799, 2
            tz.transition 1967, 4, :o2, -84330000, 58550675, 24
            tz.transition 1967, 10, :o1, -71107200, 4879529, 2
            tz.transition 1968, 4, :o2, -52707600, 58559459, 24
            tz.transition 1968, 10, :o1, -39484800, 4880261, 2
            tz.transition 1969, 4, :o2, -21171600, 58568219, 24
            tz.transition 1969, 10, :o1, -7948800, 4880991, 2
            tz.transition 1970, 4, :o2, 10364400
            tz.transition 1970, 10, :o1, 23587200
            tz.transition 1971, 4, :o2, 41900400
            tz.transition 1971, 10, :o1, 55123200
            tz.transition 1972, 4, :o2, 73522800
            tz.transition 1972, 10, :o1, 86745600
            tz.transition 1973, 4, :o2, 105058800
            tz.transition 1973, 10, :o1, 118281600
            tz.transition 1974, 4, :o2, 136594800
            tz.transition 1974, 10, :o1, 149817600
            tz.transition 1975, 4, :o2, 168130800
            tz.transition 1975, 10, :o1, 181353600
            tz.transition 1976, 4, :o2, 199753200
            tz.transition 1976, 10, :o1, 212976000
            tz.transition 1977, 4, :o2, 231289200
            tz.transition 1977, 10, :o1, 244512000
            tz.transition 1978, 4, :o2, 262825200
            tz.transition 1978, 10, :o1, 276048000
            tz.transition 1979, 4, :o2, 294361200
            tz.transition 1979, 10, :o1, 307584000
            tz.transition 1980, 4, :o2, 325983600
            tz.transition 1980, 10, :o1, 339206400
            tz.transition 1981, 4, :o2, 357519600
            tz.transition 1981, 10, :o1, 370742400
            tz.transition 1982, 7, :o2, 396399600
            tz.transition 1982, 10, :o1, 402278400
            tz.transition 1983, 7, :o2, 426812400
            tz.transition 1983, 10, :o1, 433814400
            tz.transition 1984, 4, :o2, 452214000
            tz.transition 1984, 10, :o1, 465436800
            tz.transition 1985, 4, :o2, 483750000
            tz.transition 1985, 10, :o1, 496972800
            tz.transition 1986, 4, :o2, 515286000
            tz.transition 1986, 10, :o1, 528508800
            tz.transition 1987, 4, :o2, 546822000
            tz.transition 1987, 10, :o1, 560044800
            tz.transition 1988, 4, :o2, 578444400
            tz.transition 1988, 10, :o1, 591667200
            tz.transition 1989, 5, :o2, 610412400
            tz.transition 1989, 10, :o1, 623203200
            tz.transition 1990, 4, :o2, 641516400
            tz.transition 1990, 10, :o1, 654739200
            tz.transition 1991, 4, :o2, 673052400
            tz.transition 1991, 10, :o1, 686275200
            tz.transition 1992, 4, :o2, 704674800
            tz.transition 1992, 10, :o1, 717897600
            tz.transition 1993, 4, :o2, 736210800
            tz.transition 1993, 10, :o1, 749433600
            tz.transition 1994, 4, :o2, 767746800
            tz.transition 1994, 10, :o1, 780969600
            tz.transition 1995, 4, :o2, 799020000
            tz.transition 1995, 9, :o1, 812322000
            tz.transition 1996, 4, :o2, 830469600
            tz.transition 1996, 9, :o1, 843771600
            tz.transition 1997, 4, :o2, 861919200
            tz.transition 1997, 9, :o1, 875221200
            tz.transition 1998, 4, :o2, 893368800
            tz.transition 1998, 9, :o1, 906670800
            tz.transition 1999, 4, :o2, 925423200
            tz.transition 1999, 9, :o1, 938725200
            tz.transition 2000, 4, :o2, 956872800
            tz.transition 2000, 9, :o1, 970174800
            tz.transition 2001, 4, :o2, 988322400
            tz.transition 2001, 9, :o1, 1001624400
            tz.transition 2002, 4, :o2, 1019772000
            tz.transition 2002, 9, :o1, 1033074000
            tz.transition 2003, 4, :o2, 1051221600
            tz.transition 2003, 9, :o1, 1064523600
            tz.transition 2004, 4, :o2, 1083276000
            tz.transition 2004, 9, :o1, 1096578000
            tz.transition 2005, 4, :o2, 1114725600
            tz.transition 2005, 9, :o1, 1128027600
            tz.transition 2006, 4, :o2, 1146175200
            tz.transition 2006, 9, :o1, 1158872400
            tz.transition 2007, 4, :o2, 1177624800
            tz.transition 2007, 9, :o1, 1189112400
            tz.transition 2008, 4, :o2, 1209074400
            tz.transition 2008, 8, :o1, 1219957200
            tz.transition 2009, 4, :o2, 1240524000
            tz.transition 2009, 8, :o1, 1250802000
            tz.transition 2010, 4, :o2, 1272578400
            tz.transition 2010, 8, :o1, 1281474000
            tz.transition 2010, 9, :o2, 1284069600
            tz.transition 2010, 9, :o1, 1285880400
            tz.transition 2014, 5, :o2, 1400191200
            tz.transition 2014, 6, :o1, 1403816400
            tz.transition 2014, 7, :o2, 1406844000
            tz.transition 2014, 9, :o1, 1411678800
            tz.transition 2016, 7, :o2, 1467928800
            tz.transition 2016, 10, :o1, 1477602000
            tz.transition 2017, 4, :o2, 1493330400
            tz.transition 2017, 5, :o1, 1495746000
            tz.transition 2017, 6, :o2, 1498773600
            tz.transition 2017, 10, :o1, 1509051600
            tz.transition 2018, 4, :o2, 1524780000
            tz.transition 2018, 5, :o1, 1525986000
            tz.transition 2018, 6, :o2, 1529013600
            tz.transition 2018, 10, :o1, 1540501200
            tz.transition 2019, 4, :o2, 1556229600
            tz.transition 2019, 5, :o1, 1556830800
            tz.transition 2019, 6, :o2, 1559858400
            tz.transition 2019, 10, :o1, 1572555600
            tz.transition 2020, 5, :o2, 1590703200
            tz.transition 2020, 10, :o1, 1604005200
            tz.transition 2021, 5, :o2, 1620943200
            tz.transition 2021, 10, :o1, 1635454800
            tz.transition 2022, 5, :o2, 1651788000
            tz.transition 2022, 10, :o1, 1666904400
            tz.transition 2023, 4, :o2, 1682632800
            tz.transition 2023, 10, :o1, 1698354000
            tz.transition 2024, 4, :o2, 1714082400
            tz.transition 2024, 10, :o1, 1730408400
            tz.transition 2025, 4, :o2, 1745532000
            tz.transition 2025, 10, :o1, 1761858000
            tz.transition 2026, 4, :o2, 1777586400
            tz.transition 2026, 10, :o1, 1793307600
            tz.transition 2027, 4, :o2, 1809036000
            tz.transition 2027, 10, :o1, 1824757200
            tz.transition 2028, 4, :o2, 1840485600
            tz.transition 2028, 10, :o1, 1856206800
            tz.transition 2029, 4, :o2, 1871935200
            tz.transition 2029, 10, :o1, 1887656400
            tz.transition 2030, 4, :o2, 1903384800
            tz.transition 2030, 10, :o1, 1919710800
            tz.transition 2031, 4, :o2, 1934834400
            tz.transition 2031, 10, :o1, 1951160400
            tz.transition 2032, 4, :o2, 1966888800
            tz.transition 2032, 10, :o1, 1982610000
            tz.transition 2033, 4, :o2, 1998338400
            tz.transition 2033, 10, :o1, 2014059600
            tz.transition 2034, 4, :o2, 2029788000
            tz.transition 2034, 10, :o1, 2045509200
            tz.transition 2035, 4, :o2, 2061237600
            tz.transition 2035, 10, :o1, 2076958800
            tz.transition 2036, 4, :o2, 2092687200
            tz.transition 2036, 10, :o1, 2107803600
            tz.transition 2037, 4, :o2, 2124741600
            tz.transition 2037, 10, :o1, 2138648400
            tz.transition 2038, 4, :o2, 2156191200, 29586521, 12
            tz.transition 2038, 9, :o1, 2168888400, 19725523, 8
            tz.transition 2039, 4, :o2, 2187640800, 29590889, 12
            tz.transition 2039, 9, :o1, 2199733200, 19728379, 8
            tz.transition 2039, 10, :o2, 2202760800, 29592989, 12
            tz.transition 2039, 10, :o1, 2203362000, 19728715, 8
            tz.transition 2040, 4, :o2, 2219090400, 29595257, 12
            tz.transition 2040, 9, :o1, 2230578000, 19731235, 8
            tz.transition 2040, 10, :o2, 2233605600, 29597273, 12
            tz.transition 2040, 10, :o1, 2234811600, 19731627, 8
            tz.transition 2041, 4, :o2, 2250540000, 29599625, 12
            tz.transition 2041, 8, :o1, 2260818000, 19734035, 8
            tz.transition 2041, 9, :o2, 2263845600, 29601473, 12
            tz.transition 2041, 10, :o1, 2266866000, 19734595, 8
            tz.transition 2042, 4, :o2, 2281989600, 29603993, 12
            tz.transition 2042, 8, :o1, 2291662800, 19736891, 8
            tz.transition 2042, 9, :o2, 2294690400, 29605757, 12
            tz.transition 2042, 10, :o1, 2298315600, 19737507, 8
            tz.transition 2043, 4, :o2, 2314044000, 29608445, 12
            tz.transition 2043, 8, :o1, 2322507600, 19739747, 8
            tz.transition 2043, 9, :o2, 2325535200, 29610041, 12
            tz.transition 2043, 10, :o1, 2329765200, 19740419, 8
            tz.transition 2044, 4, :o2, 2345493600, 29612813, 12
            tz.transition 2044, 7, :o1, 2352747600, 19742547, 8
            tz.transition 2044, 8, :o2, 2355775200, 29614241, 12
            tz.transition 2044, 10, :o1, 2361214800, 19743331, 8
            tz.transition 2045, 4, :o2, 2376943200, 29617181, 12
            tz.transition 2045, 7, :o1, 2383592400, 19745403, 8
            tz.transition 2045, 8, :o2, 2386620000, 29618525, 12
            tz.transition 2045, 10, :o1, 2392664400, 19746243, 8
            tz.transition 2046, 4, :o2, 2408392800, 29621549, 12
            tz.transition 2046, 6, :o1, 2413832400, 19748203, 8
            tz.transition 2046, 8, :o2, 2417464800, 29622809, 12
            tz.transition 2046, 10, :o1, 2424114000, 19749155, 8
            tz.transition 2047, 4, :o2, 2439842400, 29625917, 12
            tz.transition 2047, 6, :o1, 2444677200, 19751059, 8
            tz.transition 2047, 7, :o2, 2447704800, 29627009, 12
            tz.transition 2047, 10, :o1, 2456168400, 19752123, 8
            tz.transition 2048, 4, :o2, 2471896800, 29630369, 12
            tz.transition 2048, 6, :o1, 2475522000, 19753915, 8
            tz.transition 2048, 7, :o2, 2478549600, 29631293, 12
            tz.transition 2048, 10, :o1, 2487618000, 19755035, 8
            tz.transition 2049, 4, :o2, 2503346400, 29634737, 12
            tz.transition 2049, 5, :o1, 2505762000, 19756715, 8
            tz.transition 2049, 7, :o2, 2508789600, 29635493, 12
            tz.transition 2049, 10, :o1, 2519067600, 19757947, 8
            tz.transition 2050, 4, :o2, 2534796000, 29639105, 12
            tz.transition 2050, 5, :o1, 2536606800, 19759571, 8
            tz.transition 2050, 6, :o2, 2539634400, 29639777, 12
            tz.transition 2050, 10, :o1, 2550517200, 19760859, 8
            tz.transition 2051, 4, :o2, 2566245600, 29643473, 12
            tz.transition 2051, 5, :o1, 2567451600, 19762427, 8
            tz.transition 2051, 6, :o2, 2570479200, 29644061, 12
            tz.transition 2051, 10, :o1, 2581966800, 19763771, 8
            tz.transition 2052, 5, :o2, 2600719200, 29648261, 12
            tz.transition 2052, 10, :o1, 2614021200, 19766739, 8
            tz.transition 2053, 5, :o2, 2631564000, 29652545, 12
            tz.transition 2053, 10, :o1, 2645470800, 19769651, 8
            tz.transition 2054, 5, :o2, 2662408800, 29656829, 12
            tz.transition 2054, 10, :o1, 2676920400, 19772563, 8
            tz.transition 2055, 4, :o2, 2692648800, 29661029, 12
            tz.transition 2055, 10, :o1, 2708370000, 19775475, 8
            tz.transition 2056, 4, :o2, 2724098400, 29665397, 12
            tz.transition 2056, 10, :o1, 2739819600, 19778387, 8
            tz.transition 2057, 4, :o2, 2755548000, 29669765, 12
            tz.transition 2057, 10, :o1, 2771269200, 19781299, 8
            tz.transition 2058, 4, :o2, 2786997600, 29674133, 12
            tz.transition 2058, 10, :o1, 2803323600, 19784267, 8
            tz.transition 2059, 4, :o2, 2818447200, 29678501, 12
            tz.transition 2059, 10, :o1, 2834773200, 19787179, 8
            tz.transition 2060, 4, :o2, 2850501600, 29682953, 12
            tz.transition 2060, 10, :o1, 2866222800, 19790091, 8
            tz.transition 2061, 4, :o2, 2881951200, 29687321, 12
            tz.transition 2061, 10, :o1, 2897672400, 19793003, 8
            tz.transition 2062, 4, :o2, 2913400800, 29691689, 12
            tz.transition 2062, 10, :o1, 2929122000, 19795915, 8
            tz.transition 2063, 4, :o2, 2944850400, 29696057, 12
            tz.transition 2063, 10, :o1, 2960571600, 19798827, 8
            tz.transition 2064, 4, :o2, 2976300000, 29700425, 12
            tz.transition 2064, 10, :o1, 2992626000, 19801795, 8
            tz.transition 2065, 4, :o2, 3008354400, 29704877, 12
            tz.transition 2065, 10, :o1, 3024075600, 19804707, 8
            tz.transition 2066, 4, :o2, 3039804000, 29709245, 12
            tz.transition 2066, 10, :o1, 3055525200, 19807619, 8
          end
        end
      end
    end
  end
end
