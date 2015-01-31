# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module America
        module Montevideo
          include TimezoneDefinition
          
          timezone 'America/Montevideo' do |tz|
            tz.offset :o0, -13484, 0, :LMT
            tz.offset :o1, -13484, 0, :MMT
            tz.offset :o2, -12600, 0, :UYT
            tz.offset :o3, -12600, 1800, :UYHST
            tz.offset :o4, -10800, 3600, :UYST
            tz.offset :o5, -10800, 0, :UYT
            tz.offset :o6, -10800, 1800, :UYHST
            
            tz.transition 1898, 6, :o1, -2256668116, 52152522971, 21600
            tz.transition 1920, 5, :o2, -1567455316, 52324826171, 21600
            tz.transition 1923, 10, :o3, -1459542600, 116337343, 48
            tz.transition 1924, 4, :o2, -1443819600, 19391013, 8
            tz.transition 1924, 10, :o3, -1428006600, 116354863, 48
            tz.transition 1925, 4, :o2, -1412283600, 19393933, 8
            tz.transition 1925, 10, :o3, -1396470600, 116372383, 48
            tz.transition 1926, 4, :o2, -1380747600, 19396853, 8
            tz.transition 1933, 10, :o3, -1141590600, 116513983, 48
            tz.transition 1934, 4, :o2, -1128286800, 19420229, 8
            tz.transition 1934, 10, :o3, -1110141000, 116531455, 48
            tz.transition 1935, 3, :o2, -1096837200, 19423141, 8
            tz.transition 1935, 10, :o3, -1078691400, 116548927, 48
            tz.transition 1936, 3, :o2, -1065387600, 19426053, 8
            tz.transition 1936, 11, :o3, -1046637000, 116566735, 48
            tz.transition 1937, 3, :o2, -1033938000, 19428965, 8
            tz.transition 1937, 10, :o3, -1015187400, 116584207, 48
            tz.transition 1938, 3, :o2, -1002488400, 19431877, 8
            tz.transition 1938, 10, :o3, -983737800, 116601679, 48
            tz.transition 1939, 3, :o2, -971038800, 19434789, 8
            tz.transition 1939, 10, :o3, -952288200, 116619151, 48
            tz.transition 1940, 3, :o2, -938984400, 19437757, 8
            tz.transition 1940, 10, :o3, -920838600, 116636623, 48
            tz.transition 1941, 3, :o2, -907534800, 19440669, 8
            tz.transition 1941, 8, :o3, -896819400, 116649967, 48
            tz.transition 1942, 1, :o2, -883602000, 19442885, 8
            tz.transition 1942, 12, :o4, -853619400, 116673967, 48
            tz.transition 1943, 3, :o5, -845848800, 29169571, 12
            tz.transition 1959, 5, :o4, -334789200, 19493701, 8
            tz.transition 1959, 11, :o5, -319672800, 29242651, 12
            tz.transition 1960, 1, :o4, -314226000, 19495605, 8
            tz.transition 1960, 3, :o5, -309996000, 29243995, 12
            tz.transition 1965, 4, :o4, -149720400, 19510837, 8
            tz.transition 1965, 9, :o5, -134604000, 29268355, 12
            tz.transition 1966, 4, :o4, -118270800, 19513749, 8
            tz.transition 1966, 10, :o5, -100044000, 29273155, 12
            tz.transition 1967, 4, :o4, -86821200, 19516661, 8
            tz.transition 1967, 10, :o5, -68508000, 29277535, 12
            tz.transition 1968, 5, :o6, -50446800, 19520029, 8
            tz.transition 1968, 12, :o5, -34119000, 117129245, 48
            tz.transition 1969, 5, :o6, -18910800, 19522949, 8
            tz.transition 1969, 12, :o5, -2583000, 117146765, 48
            tz.transition 1970, 5, :o6, 12625200
            tz.transition 1970, 12, :o5, 28953000
            tz.transition 1972, 4, :o4, 72932400
            tz.transition 1972, 8, :o5, 82692000
            tz.transition 1974, 3, :o6, 132116400
            tz.transition 1974, 12, :o4, 156911400
            tz.transition 1976, 10, :o5, 212983200
            tz.transition 1977, 12, :o4, 250052400
            tz.transition 1978, 4, :o5, 260244000
            tz.transition 1979, 10, :o4, 307594800
            tz.transition 1980, 5, :o5, 325994400
            tz.transition 1987, 12, :o4, 566449200
            tz.transition 1988, 3, :o5, 574308000
            tz.transition 1988, 12, :o4, 597812400
            tz.transition 1989, 3, :o5, 605671200
            tz.transition 1989, 10, :o4, 625633200
            tz.transition 1990, 3, :o5, 636516000
            tz.transition 1990, 10, :o4, 656478000
            tz.transition 1991, 3, :o5, 667965600
            tz.transition 1991, 10, :o4, 688532400
            tz.transition 1992, 3, :o5, 699415200
            tz.transition 1992, 10, :o4, 719377200
            tz.transition 1993, 2, :o5, 730864800
            tz.transition 2004, 9, :o4, 1095562800
            tz.transition 2005, 3, :o5, 1111896000
            tz.transition 2005, 10, :o4, 1128834000
            tz.transition 2006, 3, :o5, 1142136000
            tz.transition 2006, 10, :o4, 1159678800
            tz.transition 2007, 3, :o5, 1173585600
            tz.transition 2007, 10, :o4, 1191733200
            tz.transition 2008, 3, :o5, 1205035200
            tz.transition 2008, 10, :o4, 1223182800
            tz.transition 2009, 3, :o5, 1236484800
            tz.transition 2009, 10, :o4, 1254632400
            tz.transition 2010, 3, :o5, 1268539200
            tz.transition 2010, 10, :o4, 1286082000
            tz.transition 2011, 3, :o5, 1299988800
            tz.transition 2011, 10, :o4, 1317531600
            tz.transition 2012, 3, :o5, 1331438400
            tz.transition 2012, 10, :o4, 1349586000
            tz.transition 2013, 3, :o5, 1362888000
            tz.transition 2013, 10, :o4, 1381035600
            tz.transition 2014, 3, :o5, 1394337600
            tz.transition 2014, 10, :o4, 1412485200
            tz.transition 2015, 3, :o5, 1425787200
            tz.transition 2015, 10, :o4, 1443934800
            tz.transition 2016, 3, :o5, 1457841600
            tz.transition 2016, 10, :o4, 1475384400
            tz.transition 2017, 3, :o5, 1489291200
            tz.transition 2017, 10, :o4, 1506834000
            tz.transition 2018, 3, :o5, 1520740800
            tz.transition 2018, 10, :o4, 1538888400
            tz.transition 2019, 3, :o5, 1552190400
            tz.transition 2019, 10, :o4, 1570338000
            tz.transition 2020, 3, :o5, 1583640000
            tz.transition 2020, 10, :o4, 1601787600
            tz.transition 2021, 3, :o5, 1615694400
            tz.transition 2021, 10, :o4, 1633237200
            tz.transition 2022, 3, :o5, 1647144000
            tz.transition 2022, 10, :o4, 1664686800
            tz.transition 2023, 3, :o5, 1678593600
            tz.transition 2023, 10, :o4, 1696136400
            tz.transition 2024, 3, :o5, 1710043200
            tz.transition 2024, 10, :o4, 1728190800
            tz.transition 2025, 3, :o5, 1741492800
            tz.transition 2025, 10, :o4, 1759640400
            tz.transition 2026, 3, :o5, 1772942400
            tz.transition 2026, 10, :o4, 1791090000
            tz.transition 2027, 3, :o5, 1804996800
            tz.transition 2027, 10, :o4, 1822539600
            tz.transition 2028, 3, :o5, 1836446400
            tz.transition 2028, 10, :o4, 1853989200
            tz.transition 2029, 3, :o5, 1867896000
            tz.transition 2029, 10, :o4, 1886043600
            tz.transition 2030, 3, :o5, 1899345600
            tz.transition 2030, 10, :o4, 1917493200
            tz.transition 2031, 3, :o5, 1930795200
            tz.transition 2031, 10, :o4, 1948942800
            tz.transition 2032, 3, :o5, 1962849600
            tz.transition 2032, 10, :o4, 1980392400
            tz.transition 2033, 3, :o5, 1994299200
            tz.transition 2033, 10, :o4, 2011842000
            tz.transition 2034, 3, :o5, 2025748800
            tz.transition 2034, 10, :o4, 2043291600
            tz.transition 2035, 3, :o5, 2057198400
            tz.transition 2035, 10, :o4, 2075346000
            tz.transition 2036, 3, :o5, 2088648000
            tz.transition 2036, 10, :o4, 2106795600
            tz.transition 2037, 3, :o5, 2120097600
            tz.transition 2037, 10, :o4, 2138245200
            tz.transition 2038, 3, :o5, 2152152000, 7396490, 3
            tz.transition 2038, 10, :o4, 2169694800, 59176793, 24
            tz.transition 2039, 3, :o5, 2183601600, 7397582, 3
            tz.transition 2039, 10, :o4, 2201144400, 59185529, 24
            tz.transition 2040, 3, :o5, 2215051200, 7398674, 3
            tz.transition 2040, 10, :o4, 2233198800, 59194433, 24
            tz.transition 2041, 3, :o5, 2246500800, 7399766, 3
            tz.transition 2041, 10, :o4, 2264648400, 59203169, 24
            tz.transition 2042, 3, :o5, 2277950400, 7400858, 3
            tz.transition 2042, 10, :o4, 2296098000, 59211905, 24
            tz.transition 2043, 3, :o5, 2309400000, 7401950, 3
            tz.transition 2043, 10, :o4, 2327547600, 59220641, 24
            tz.transition 2044, 3, :o5, 2341454400, 7403063, 3
            tz.transition 2044, 10, :o4, 2358997200, 59229377, 24
            tz.transition 2045, 3, :o5, 2372904000, 7404155, 3
            tz.transition 2045, 10, :o4, 2390446800, 59238113, 24
            tz.transition 2046, 3, :o5, 2404353600, 7405247, 3
            tz.transition 2046, 10, :o4, 2422501200, 59247017, 24
            tz.transition 2047, 3, :o5, 2435803200, 7406339, 3
            tz.transition 2047, 10, :o4, 2453950800, 59255753, 24
            tz.transition 2048, 3, :o5, 2467252800, 7407431, 3
            tz.transition 2048, 10, :o4, 2485400400, 59264489, 24
            tz.transition 2049, 3, :o5, 2499307200, 7408544, 3
            tz.transition 2049, 10, :o4, 2516850000, 59273225, 24
            tz.transition 2050, 3, :o5, 2530756800, 7409636, 3
            tz.transition 2050, 10, :o4, 2548299600, 59281961, 24
            tz.transition 2051, 3, :o5, 2562206400, 7410728, 3
            tz.transition 2051, 10, :o4, 2579749200, 59290697, 24
            tz.transition 2052, 3, :o5, 2593656000, 7411820, 3
            tz.transition 2052, 10, :o4, 2611803600, 59299601, 24
            tz.transition 2053, 3, :o5, 2625105600, 7412912, 3
            tz.transition 2053, 10, :o4, 2643253200, 59308337, 24
            tz.transition 2054, 3, :o5, 2656555200, 7414004, 3
            tz.transition 2054, 10, :o4, 2674702800, 59317073, 24
            tz.transition 2055, 3, :o5, 2688609600, 7415117, 3
            tz.transition 2055, 10, :o4, 2706152400, 59325809, 24
            tz.transition 2056, 3, :o5, 2720059200, 7416209, 3
            tz.transition 2056, 10, :o4, 2737602000, 59334545, 24
            tz.transition 2057, 3, :o5, 2751508800, 7417301, 3
            tz.transition 2057, 10, :o4, 2769656400, 59343449, 24
            tz.transition 2058, 3, :o5, 2782958400, 7418393, 3
            tz.transition 2058, 10, :o4, 2801106000, 59352185, 24
            tz.transition 2059, 3, :o5, 2814408000, 7419485, 3
            tz.transition 2059, 10, :o4, 2832555600, 59360921, 24
            tz.transition 2060, 3, :o5, 2846462400, 7420598, 3
            tz.transition 2060, 10, :o4, 2864005200, 59369657, 24
            tz.transition 2061, 3, :o5, 2877912000, 7421690, 3
            tz.transition 2061, 10, :o4, 2895454800, 59378393, 24
            tz.transition 2062, 3, :o5, 2909361600, 7422782, 3
            tz.transition 2062, 10, :o4, 2926904400, 59387129, 24
            tz.transition 2063, 3, :o5, 2940811200, 7423874, 3
            tz.transition 2063, 10, :o4, 2958958800, 59396033, 24
            tz.transition 2064, 3, :o5, 2972260800, 7424966, 3
            tz.transition 2064, 10, :o4, 2990408400, 59404769, 24
            tz.transition 2065, 3, :o5, 3003710400, 7426058, 3
          end
        end
      end
    end
  end
end
