# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Hebron
          include TimezoneDefinition
          
          timezone 'Asia/Hebron' do |tz|
            tz.offset :o0, 8423, 0, :LMT
            tz.offset :o1, 7200, 0, :EET
            tz.offset :o2, 7200, 3600, :EET
            tz.offset :o3, 7200, 3600, :EEST
            tz.offset :o4, 7200, 0, :IST
            tz.offset :o5, 7200, 3600, :IDT
            
            tz.transition 1900, 9, :o1, -2185410023, 208681349977, 86400
            tz.transition 1940, 5, :o2, -933645600, 29157377, 12
            tz.transition 1942, 10, :o1, -857358000, 19445315, 8
            tz.transition 1943, 4, :o2, -844300800, 4861631, 2
            tz.transition 1943, 10, :o1, -825822000, 19448235, 8
            tz.transition 1944, 3, :o2, -812685600, 29174177, 12
            tz.transition 1944, 10, :o1, -794199600, 19451163, 8
            tz.transition 1945, 4, :o2, -779853600, 29178737, 12
            tz.transition 1945, 10, :o1, -762656400, 58362251, 24
            tz.transition 1946, 4, :o2, -748310400, 4863853, 2
            tz.transition 1946, 10, :o1, -731127600, 19457003, 8
            tz.transition 1957, 5, :o3, -399088800, 29231621, 12
            tz.transition 1957, 9, :o1, -386650800, 19488899, 8
            tz.transition 1958, 4, :o3, -368330400, 29235893, 12
            tz.transition 1958, 9, :o1, -355114800, 19491819, 8
            tz.transition 1959, 4, :o3, -336790800, 58480547, 24
            tz.transition 1959, 9, :o1, -323654400, 4873683, 2
            tz.transition 1960, 4, :o3, -305168400, 58489331, 24
            tz.transition 1960, 9, :o1, -292032000, 4874415, 2
            tz.transition 1961, 4, :o3, -273632400, 58498091, 24
            tz.transition 1961, 9, :o1, -260496000, 4875145, 2
            tz.transition 1962, 4, :o3, -242096400, 58506851, 24
            tz.transition 1962, 9, :o1, -228960000, 4875875, 2
            tz.transition 1963, 4, :o3, -210560400, 58515611, 24
            tz.transition 1963, 9, :o1, -197424000, 4876605, 2
            tz.transition 1964, 4, :o3, -178938000, 58524395, 24
            tz.transition 1964, 9, :o1, -165801600, 4877337, 2
            tz.transition 1965, 4, :o3, -147402000, 58533155, 24
            tz.transition 1965, 9, :o1, -134265600, 4878067, 2
            tz.transition 1966, 4, :o3, -115866000, 58541915, 24
            tz.transition 1966, 10, :o1, -102643200, 4878799, 2
            tz.transition 1967, 4, :o3, -84330000, 58550675, 24
            tz.transition 1967, 6, :o4, -81313200, 19517171, 8
            tz.transition 1974, 7, :o5, 142380000
            tz.transition 1974, 10, :o4, 150843600
            tz.transition 1975, 4, :o5, 167176800
            tz.transition 1975, 8, :o4, 178664400
            tz.transition 1985, 4, :o5, 482277600
            tz.transition 1985, 9, :o4, 495579600
            tz.transition 1986, 5, :o5, 516751200
            tz.transition 1986, 9, :o4, 526424400
            tz.transition 1987, 4, :o5, 545436000
            tz.transition 1987, 9, :o4, 558478800
            tz.transition 1988, 4, :o5, 576626400
            tz.transition 1988, 9, :o4, 589323600
            tz.transition 1989, 4, :o5, 609890400
            tz.transition 1989, 9, :o4, 620773200
            tz.transition 1990, 3, :o5, 638316000
            tz.transition 1990, 8, :o4, 651618000
            tz.transition 1991, 3, :o5, 669765600
            tz.transition 1991, 8, :o4, 683672400
            tz.transition 1992, 3, :o5, 701820000
            tz.transition 1992, 9, :o4, 715726800
            tz.transition 1993, 4, :o5, 733701600
            tz.transition 1993, 9, :o4, 747176400
            tz.transition 1994, 3, :o5, 765151200
            tz.transition 1994, 8, :o4, 778021200
            tz.transition 1995, 3, :o5, 796600800
            tz.transition 1995, 9, :o4, 810075600
            tz.transition 1995, 12, :o1, 820447200
            tz.transition 1996, 4, :o3, 828655200
            tz.transition 1996, 9, :o1, 843170400
            tz.transition 1997, 4, :o3, 860104800
            tz.transition 1997, 9, :o1, 874620000
            tz.transition 1998, 4, :o3, 891554400
            tz.transition 1998, 9, :o1, 906069600
            tz.transition 1999, 4, :o3, 924213600
            tz.transition 1999, 10, :o1, 939934800
            tz.transition 2000, 4, :o3, 956268000
            tz.transition 2000, 10, :o1, 971989200
            tz.transition 2001, 4, :o3, 987717600
            tz.transition 2001, 10, :o1, 1003438800
            tz.transition 2002, 4, :o3, 1019167200
            tz.transition 2002, 10, :o1, 1034888400
            tz.transition 2003, 4, :o3, 1050616800
            tz.transition 2003, 10, :o1, 1066338000
            tz.transition 2004, 4, :o3, 1082066400
            tz.transition 2004, 9, :o1, 1096581600
            tz.transition 2005, 4, :o3, 1113516000
            tz.transition 2005, 10, :o1, 1128380400
            tz.transition 2006, 3, :o3, 1143842400
            tz.transition 2006, 9, :o1, 1158872400
            tz.transition 2007, 3, :o3, 1175378400
            tz.transition 2007, 9, :o1, 1189638000
            tz.transition 2008, 3, :o3, 1206655200
            tz.transition 2008, 8, :o1, 1220216400
            tz.transition 2009, 3, :o3, 1238104800
            tz.transition 2009, 9, :o1, 1252015200
            tz.transition 2010, 3, :o3, 1269554400
            tz.transition 2010, 8, :o1, 1281474000
            tz.transition 2011, 3, :o3, 1301608860
            tz.transition 2011, 7, :o1, 1312146000
            tz.transition 2011, 8, :o3, 1314655200
            tz.transition 2011, 9, :o1, 1317330000
            tz.transition 2012, 3, :o3, 1333058400
            tz.transition 2012, 9, :o1, 1348178400
            tz.transition 2013, 3, :o3, 1364508000
            tz.transition 2013, 9, :o1, 1380229200
            tz.transition 2014, 3, :o3, 1395957600
            tz.transition 2014, 10, :o1, 1414098000
            tz.transition 2015, 3, :o3, 1427493600
            tz.transition 2015, 10, :o1, 1445547600
            tz.transition 2016, 3, :o3, 1458943200
            tz.transition 2016, 10, :o1, 1476997200
            tz.transition 2017, 3, :o3, 1490997600
            tz.transition 2017, 10, :o1, 1509051600
            tz.transition 2018, 3, :o3, 1522447200
            tz.transition 2018, 10, :o1, 1540501200
            tz.transition 2019, 3, :o3, 1553896800
            tz.transition 2019, 10, :o1, 1571950800
            tz.transition 2020, 3, :o3, 1585346400
            tz.transition 2020, 10, :o1, 1603400400
            tz.transition 2021, 3, :o3, 1616796000
            tz.transition 2021, 10, :o1, 1634850000
            tz.transition 2022, 3, :o3, 1648245600
            tz.transition 2022, 10, :o1, 1666299600
            tz.transition 2023, 3, :o3, 1680300000
            tz.transition 2023, 10, :o1, 1698354000
            tz.transition 2024, 3, :o3, 1711749600
            tz.transition 2024, 10, :o1, 1729803600
            tz.transition 2025, 3, :o3, 1743199200
            tz.transition 2025, 10, :o1, 1761253200
            tz.transition 2026, 3, :o3, 1774648800
            tz.transition 2026, 10, :o1, 1792702800
            tz.transition 2027, 3, :o3, 1806098400
            tz.transition 2027, 10, :o1, 1824152400
            tz.transition 2028, 3, :o3, 1838152800
            tz.transition 2028, 10, :o1, 1856206800
            tz.transition 2029, 3, :o3, 1869602400
            tz.transition 2029, 10, :o1, 1887656400
            tz.transition 2030, 3, :o3, 1901052000
            tz.transition 2030, 10, :o1, 1919106000
            tz.transition 2031, 3, :o3, 1932501600
            tz.transition 2031, 10, :o1, 1950555600
            tz.transition 2032, 3, :o3, 1963951200
            tz.transition 2032, 10, :o1, 1982005200
            tz.transition 2033, 3, :o3, 1995400800
            tz.transition 2033, 10, :o1, 2013454800
            tz.transition 2034, 3, :o3, 2027455200
            tz.transition 2034, 10, :o1, 2045509200
            tz.transition 2035, 3, :o3, 2058904800
            tz.transition 2035, 10, :o1, 2076958800
            tz.transition 2036, 3, :o3, 2090354400
            tz.transition 2036, 10, :o1, 2108408400
            tz.transition 2037, 3, :o3, 2121804000
            tz.transition 2037, 10, :o1, 2139858000
            tz.transition 2038, 3, :o3, 2153253600, 29586113, 12
            tz.transition 2038, 10, :o1, 2171307600, 19725747, 8
            tz.transition 2039, 3, :o3, 2184703200, 29590481, 12
            tz.transition 2039, 10, :o1, 2202757200, 19728659, 8
            tz.transition 2040, 3, :o3, 2216757600, 29594933, 12
            tz.transition 2040, 10, :o1, 2234811600, 19731627, 8
            tz.transition 2041, 3, :o3, 2248207200, 29599301, 12
            tz.transition 2041, 10, :o1, 2266261200, 19734539, 8
            tz.transition 2042, 3, :o3, 2279656800, 29603669, 12
            tz.transition 2042, 10, :o1, 2297710800, 19737451, 8
            tz.transition 2043, 3, :o3, 2311106400, 29608037, 12
            tz.transition 2043, 10, :o1, 2329160400, 19740363, 8
            tz.transition 2044, 3, :o3, 2342556000, 29612405, 12
            tz.transition 2044, 10, :o1, 2360610000, 19743275, 8
            tz.transition 2045, 3, :o3, 2374610400, 29616857, 12
            tz.transition 2045, 10, :o1, 2392664400, 19746243, 8
            tz.transition 2046, 3, :o3, 2406060000, 29621225, 12
            tz.transition 2046, 10, :o1, 2424114000, 19749155, 8
            tz.transition 2047, 3, :o3, 2437509600, 29625593, 12
            tz.transition 2047, 10, :o1, 2455563600, 19752067, 8
            tz.transition 2048, 3, :o3, 2468959200, 29629961, 12
            tz.transition 2048, 10, :o1, 2487013200, 19754979, 8
            tz.transition 2049, 3, :o3, 2500408800, 29634329, 12
            tz.transition 2049, 10, :o1, 2518462800, 19757891, 8
            tz.transition 2050, 3, :o3, 2531858400, 29638697, 12
            tz.transition 2050, 10, :o1, 2549912400, 19760803, 8
            tz.transition 2051, 3, :o3, 2563912800, 29643149, 12
            tz.transition 2051, 10, :o1, 2581966800, 19763771, 8
            tz.transition 2052, 3, :o3, 2595362400, 29647517, 12
            tz.transition 2052, 10, :o1, 2613416400, 19766683, 8
            tz.transition 2053, 3, :o3, 2626812000, 29651885, 12
            tz.transition 2053, 10, :o1, 2644866000, 19769595, 8
            tz.transition 2054, 3, :o3, 2658261600, 29656253, 12
            tz.transition 2054, 10, :o1, 2676315600, 19772507, 8
            tz.transition 2055, 3, :o3, 2689711200, 29660621, 12
            tz.transition 2055, 10, :o1, 2707765200, 19775419, 8
            tz.transition 2056, 3, :o3, 2721765600, 29665073, 12
            tz.transition 2056, 10, :o1, 2739819600, 19778387, 8
            tz.transition 2057, 3, :o3, 2753215200, 29669441, 12
            tz.transition 2057, 10, :o1, 2771269200, 19781299, 8
            tz.transition 2058, 3, :o3, 2784664800, 29673809, 12
            tz.transition 2058, 10, :o1, 2802718800, 19784211, 8
            tz.transition 2059, 3, :o3, 2816114400, 29678177, 12
            tz.transition 2059, 10, :o1, 2834168400, 19787123, 8
            tz.transition 2060, 3, :o3, 2847564000, 29682545, 12
            tz.transition 2060, 10, :o1, 2865618000, 19790035, 8
            tz.transition 2061, 3, :o3, 2879013600, 29686913, 12
            tz.transition 2061, 10, :o1, 2897067600, 19792947, 8
            tz.transition 2062, 3, :o3, 2911068000, 29691365, 12
            tz.transition 2062, 10, :o1, 2929122000, 19795915, 8
            tz.transition 2063, 3, :o3, 2942517600, 29695733, 12
            tz.transition 2063, 10, :o1, 2960571600, 19798827, 8
            tz.transition 2064, 3, :o3, 2973967200, 29700101, 12
            tz.transition 2064, 10, :o1, 2992021200, 19801739, 8
            tz.transition 2065, 3, :o3, 3005416800, 29704469, 12
            tz.transition 2065, 10, :o1, 3023470800, 19804651, 8
          end
        end
      end
    end
  end
end
