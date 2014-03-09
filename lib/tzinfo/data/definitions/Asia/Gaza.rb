# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Gaza
          include TimezoneDefinition
          
          timezone 'Asia/Gaza' do |tz|
            tz.offset :o0, 8272, 0, :LMT
            tz.offset :o1, 7200, 0, :EET
            tz.offset :o2, 7200, 3600, :EET
            tz.offset :o3, 7200, 3600, :EEST
            tz.offset :o4, 7200, 0, :IST
            tz.offset :o5, 7200, 3600, :IDT
            
            tz.transition 1900, 9, :o1, -2185409872, 13042584383, 5400
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
            tz.transition 2008, 8, :o1, 1219957200
            tz.transition 2009, 3, :o3, 1238104800
            tz.transition 2009, 9, :o1, 1252015200
            tz.transition 2010, 3, :o3, 1269640860
            tz.transition 2010, 8, :o1, 1281474000
            tz.transition 2011, 3, :o3, 1301608860
            tz.transition 2011, 7, :o1, 1312146000
            tz.transition 2012, 3, :o3, 1333058400
            tz.transition 2012, 9, :o1, 1348178400
            tz.transition 2013, 3, :o3, 1364508000
            tz.transition 2013, 9, :o1, 1380229200
            tz.transition 2014, 3, :o3, 1395957600
            tz.transition 2014, 9, :o1, 1411678800
            tz.transition 2015, 3, :o3, 1427407200
            tz.transition 2015, 9, :o1, 1443128400
            tz.transition 2016, 3, :o3, 1459461600
            tz.transition 2016, 9, :o1, 1474578000
            tz.transition 2017, 3, :o3, 1490911200
            tz.transition 2017, 9, :o1, 1506027600
            tz.transition 2018, 3, :o3, 1522360800
            tz.transition 2018, 9, :o1, 1537477200
            tz.transition 2019, 3, :o3, 1553810400
            tz.transition 2019, 9, :o1, 1569531600
            tz.transition 2020, 3, :o3, 1585260000
            tz.transition 2020, 9, :o1, 1600981200
            tz.transition 2021, 3, :o3, 1616709600
            tz.transition 2021, 9, :o1, 1632430800
            tz.transition 2022, 3, :o3, 1648764000
            tz.transition 2022, 9, :o1, 1663880400
            tz.transition 2023, 3, :o3, 1680213600
            tz.transition 2023, 9, :o1, 1695330000
            tz.transition 2024, 3, :o3, 1711663200
            tz.transition 2024, 9, :o1, 1727384400
            tz.transition 2025, 3, :o3, 1743112800
            tz.transition 2025, 9, :o1, 1758834000
            tz.transition 2026, 3, :o3, 1774562400
            tz.transition 2026, 9, :o1, 1790283600
            tz.transition 2027, 3, :o3, 1806012000
            tz.transition 2027, 9, :o1, 1821733200
            tz.transition 2028, 3, :o3, 1838066400
            tz.transition 2028, 9, :o1, 1853182800
            tz.transition 2029, 3, :o3, 1869516000
            tz.transition 2029, 9, :o1, 1884632400
            tz.transition 2030, 3, :o3, 1900965600
            tz.transition 2030, 9, :o1, 1916686800
            tz.transition 2031, 3, :o3, 1932415200
            tz.transition 2031, 9, :o1, 1948136400
            tz.transition 2032, 3, :o3, 1963864800
            tz.transition 2032, 9, :o1, 1979586000
            tz.transition 2033, 3, :o3, 1995919200
            tz.transition 2033, 9, :o1, 2011035600
            tz.transition 2034, 3, :o3, 2027368800
            tz.transition 2034, 9, :o1, 2042485200
            tz.transition 2035, 3, :o3, 2058818400
            tz.transition 2035, 9, :o1, 2073934800
            tz.transition 2036, 3, :o3, 2090268000
            tz.transition 2036, 9, :o1, 2105989200
            tz.transition 2037, 3, :o3, 2121717600
            tz.transition 2037, 9, :o1, 2137438800
            tz.transition 2038, 3, :o3, 2153167200, 29586101, 12
            tz.transition 2038, 9, :o1, 2168888400, 19725523, 8
            tz.transition 2039, 3, :o3, 2185221600, 29590553, 12
            tz.transition 2039, 9, :o1, 2200338000, 19728435, 8
            tz.transition 2040, 3, :o3, 2216671200, 29594921, 12
            tz.transition 2040, 9, :o1, 2231787600, 19731347, 8
            tz.transition 2041, 3, :o3, 2248120800, 29599289, 12
            tz.transition 2041, 9, :o1, 2263842000, 19734315, 8
            tz.transition 2042, 3, :o3, 2279570400, 29603657, 12
            tz.transition 2042, 9, :o1, 2295291600, 19737227, 8
            tz.transition 2043, 3, :o3, 2311020000, 29608025, 12
            tz.transition 2043, 9, :o1, 2326741200, 19740139, 8
            tz.transition 2044, 3, :o3, 2343074400, 29612477, 12
            tz.transition 2044, 9, :o1, 2358190800, 19743051, 8
            tz.transition 2045, 3, :o3, 2374524000, 29616845, 12
            tz.transition 2045, 9, :o1, 2389640400, 19745963, 8
            tz.transition 2046, 3, :o3, 2405973600, 29621213, 12
            tz.transition 2046, 9, :o1, 2421090000, 19748875, 8
            tz.transition 2047, 3, :o3, 2437423200, 29625581, 12
            tz.transition 2047, 9, :o1, 2453144400, 19751843, 8
            tz.transition 2048, 3, :o3, 2468872800, 29629949, 12
            tz.transition 2048, 9, :o1, 2484594000, 19754755, 8
            tz.transition 2049, 3, :o3, 2500322400, 29634317, 12
            tz.transition 2049, 9, :o1, 2516043600, 19757667, 8
            tz.transition 2050, 3, :o3, 2532376800, 29638769, 12
            tz.transition 2050, 9, :o1, 2547493200, 19760579, 8
            tz.transition 2051, 3, :o3, 2563826400, 29643137, 12
            tz.transition 2051, 9, :o1, 2578942800, 19763491, 8
            tz.transition 2052, 3, :o3, 2595276000, 29647505, 12
            tz.transition 2052, 9, :o1, 2610997200, 19766459, 8
            tz.transition 2053, 3, :o3, 2626725600, 29651873, 12
            tz.transition 2053, 9, :o1, 2642446800, 19769371, 8
            tz.transition 2054, 3, :o3, 2658175200, 29656241, 12
            tz.transition 2054, 9, :o1, 2673896400, 19772283, 8
            tz.transition 2055, 3, :o3, 2689624800, 29660609, 12
            tz.transition 2055, 9, :o1, 2705346000, 19775195, 8
            tz.transition 2056, 3, :o3, 2721679200, 29665061, 12
            tz.transition 2056, 9, :o1, 2736795600, 19778107, 8
            tz.transition 2057, 3, :o3, 2753128800, 29669429, 12
            tz.transition 2057, 9, :o1, 2768245200, 19781019, 8
            tz.transition 2058, 3, :o3, 2784578400, 29673797, 12
            tz.transition 2058, 9, :o1, 2800299600, 19783987, 8
            tz.transition 2059, 3, :o3, 2816028000, 29678165, 12
            tz.transition 2059, 9, :o1, 2831749200, 19786899, 8
            tz.transition 2060, 3, :o3, 2847477600, 29682533, 12
            tz.transition 2060, 9, :o1, 2863198800, 19789811, 8
            tz.transition 2061, 3, :o3, 2879532000, 29686985, 12
            tz.transition 2061, 9, :o1, 2894648400, 19792723, 8
            tz.transition 2062, 3, :o3, 2910981600, 29691353, 12
            tz.transition 2062, 9, :o1, 2926098000, 19795635, 8
            tz.transition 2063, 3, :o3, 2942431200, 29695721, 12
            tz.transition 2063, 9, :o1, 2957547600, 19798547, 8
            tz.transition 2064, 3, :o3, 2973880800, 29700089, 12
            tz.transition 2064, 9, :o1, 2989602000, 19801515, 8
          end
        end
      end
    end
  end
end
