# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Baku
          include TimezoneDefinition
          
          timezone 'Asia/Baku' do |tz|
            tz.offset :o0, 11964, 0, :LMT
            tz.offset :o1, 10800, 0, :BAKT
            tz.offset :o2, 14400, 0, :BAKT
            tz.offset :o3, 14400, 3600, :BAKST
            tz.offset :o4, 10800, 3600, :BAKST
            tz.offset :o5, 10800, 3600, :AZST
            tz.offset :o6, 10800, 0, :AZT
            tz.offset :o7, 14400, 0, :AZT
            tz.offset :o8, 14400, 3600, :AZST
            
            tz.transition 1924, 5, :o1, -1441163964, 17452133003, 7200
            tz.transition 1957, 2, :o2, -405140400, 19487187, 8
            tz.transition 1981, 3, :o3, 354916800
            tz.transition 1981, 9, :o2, 370724400
            tz.transition 1982, 3, :o3, 386452800
            tz.transition 1982, 9, :o2, 402260400
            tz.transition 1983, 3, :o3, 417988800
            tz.transition 1983, 9, :o2, 433796400
            tz.transition 1984, 3, :o3, 449611200
            tz.transition 1984, 9, :o2, 465343200
            tz.transition 1985, 3, :o3, 481068000
            tz.transition 1985, 9, :o2, 496792800
            tz.transition 1986, 3, :o3, 512517600
            tz.transition 1986, 9, :o2, 528242400
            tz.transition 1987, 3, :o3, 543967200
            tz.transition 1987, 9, :o2, 559692000
            tz.transition 1988, 3, :o3, 575416800
            tz.transition 1988, 9, :o2, 591141600
            tz.transition 1989, 3, :o3, 606866400
            tz.transition 1989, 9, :o2, 622591200
            tz.transition 1990, 3, :o3, 638316000
            tz.transition 1990, 9, :o2, 654645600
            tz.transition 1991, 3, :o4, 670370400
            tz.transition 1991, 8, :o5, 683496000
            tz.transition 1991, 9, :o6, 686098800
            tz.transition 1992, 3, :o5, 701812800
            tz.transition 1992, 9, :o7, 717534000
            tz.transition 1996, 3, :o8, 828234000
            tz.transition 1996, 10, :o7, 846378000
            tz.transition 1997, 3, :o8, 859680000
            tz.transition 1997, 10, :o7, 877824000
            tz.transition 1998, 3, :o8, 891129600
            tz.transition 1998, 10, :o7, 909273600
            tz.transition 1999, 3, :o8, 922579200
            tz.transition 1999, 10, :o7, 941328000
            tz.transition 2000, 3, :o8, 954028800
            tz.transition 2000, 10, :o7, 972777600
            tz.transition 2001, 3, :o8, 985478400
            tz.transition 2001, 10, :o7, 1004227200
            tz.transition 2002, 3, :o8, 1017532800
            tz.transition 2002, 10, :o7, 1035676800
            tz.transition 2003, 3, :o8, 1048982400
            tz.transition 2003, 10, :o7, 1067126400
            tz.transition 2004, 3, :o8, 1080432000
            tz.transition 2004, 10, :o7, 1099180800
            tz.transition 2005, 3, :o8, 1111881600
            tz.transition 2005, 10, :o7, 1130630400
            tz.transition 2006, 3, :o8, 1143331200
            tz.transition 2006, 10, :o7, 1162080000
            tz.transition 2007, 3, :o8, 1174780800
            tz.transition 2007, 10, :o7, 1193529600
            tz.transition 2008, 3, :o8, 1206835200
            tz.transition 2008, 10, :o7, 1224979200
            tz.transition 2009, 3, :o8, 1238284800
            tz.transition 2009, 10, :o7, 1256428800
            tz.transition 2010, 3, :o8, 1269734400
            tz.transition 2010, 10, :o7, 1288483200
            tz.transition 2011, 3, :o8, 1301184000
            tz.transition 2011, 10, :o7, 1319932800
            tz.transition 2012, 3, :o8, 1332633600
            tz.transition 2012, 10, :o7, 1351382400
            tz.transition 2013, 3, :o8, 1364688000
            tz.transition 2013, 10, :o7, 1382832000
            tz.transition 2014, 3, :o8, 1396137600
            tz.transition 2014, 10, :o7, 1414281600
            tz.transition 2015, 3, :o8, 1427587200
            tz.transition 2015, 10, :o7, 1445731200
            tz.transition 2016, 3, :o8, 1459036800
            tz.transition 2016, 10, :o7, 1477785600
            tz.transition 2017, 3, :o8, 1490486400
            tz.transition 2017, 10, :o7, 1509235200
            tz.transition 2018, 3, :o8, 1521936000
            tz.transition 2018, 10, :o7, 1540684800
            tz.transition 2019, 3, :o8, 1553990400
            tz.transition 2019, 10, :o7, 1572134400
            tz.transition 2020, 3, :o8, 1585440000
            tz.transition 2020, 10, :o7, 1603584000
            tz.transition 2021, 3, :o8, 1616889600
            tz.transition 2021, 10, :o7, 1635638400
            tz.transition 2022, 3, :o8, 1648339200
            tz.transition 2022, 10, :o7, 1667088000
            tz.transition 2023, 3, :o8, 1679788800
            tz.transition 2023, 10, :o7, 1698537600
            tz.transition 2024, 3, :o8, 1711843200
            tz.transition 2024, 10, :o7, 1729987200
            tz.transition 2025, 3, :o8, 1743292800
            tz.transition 2025, 10, :o7, 1761436800
            tz.transition 2026, 3, :o8, 1774742400
            tz.transition 2026, 10, :o7, 1792886400
            tz.transition 2027, 3, :o8, 1806192000
            tz.transition 2027, 10, :o7, 1824940800
            tz.transition 2028, 3, :o8, 1837641600
            tz.transition 2028, 10, :o7, 1856390400
            tz.transition 2029, 3, :o8, 1869091200
            tz.transition 2029, 10, :o7, 1887840000
            tz.transition 2030, 3, :o8, 1901145600
            tz.transition 2030, 10, :o7, 1919289600
            tz.transition 2031, 3, :o8, 1932595200
            tz.transition 2031, 10, :o7, 1950739200
            tz.transition 2032, 3, :o8, 1964044800
            tz.transition 2032, 10, :o7, 1982793600
            tz.transition 2033, 3, :o8, 1995494400
            tz.transition 2033, 10, :o7, 2014243200
            tz.transition 2034, 3, :o8, 2026944000
            tz.transition 2034, 10, :o7, 2045692800
            tz.transition 2035, 3, :o8, 2058393600
            tz.transition 2035, 10, :o7, 2077142400
            tz.transition 2036, 3, :o8, 2090448000
            tz.transition 2036, 10, :o7, 2108592000
            tz.transition 2037, 3, :o8, 2121897600
            tz.transition 2037, 10, :o7, 2140041600
            tz.transition 2038, 3, :o8, 2153347200, 4931021, 2
            tz.transition 2038, 10, :o7, 2172096000, 4931455, 2
            tz.transition 2039, 3, :o8, 2184796800, 4931749, 2
            tz.transition 2039, 10, :o7, 2203545600, 4932183, 2
            tz.transition 2040, 3, :o8, 2216246400, 4932477, 2
            tz.transition 2040, 10, :o7, 2234995200, 4932911, 2
            tz.transition 2041, 3, :o8, 2248300800, 4933219, 2
            tz.transition 2041, 10, :o7, 2266444800, 4933639, 2
            tz.transition 2042, 3, :o8, 2279750400, 4933947, 2
            tz.transition 2042, 10, :o7, 2297894400, 4934367, 2
            tz.transition 2043, 3, :o8, 2311200000, 4934675, 2
            tz.transition 2043, 10, :o7, 2329344000, 4935095, 2
            tz.transition 2044, 3, :o8, 2342649600, 4935403, 2
            tz.transition 2044, 10, :o7, 2361398400, 4935837, 2
            tz.transition 2045, 3, :o8, 2374099200, 4936131, 2
            tz.transition 2045, 10, :o7, 2392848000, 4936565, 2
            tz.transition 2046, 3, :o8, 2405548800, 4936859, 2
            tz.transition 2046, 10, :o7, 2424297600, 4937293, 2
            tz.transition 2047, 3, :o8, 2437603200, 4937601, 2
            tz.transition 2047, 10, :o7, 2455747200, 4938021, 2
            tz.transition 2048, 3, :o8, 2469052800, 4938329, 2
            tz.transition 2048, 10, :o7, 2487196800, 4938749, 2
            tz.transition 2049, 3, :o8, 2500502400, 4939057, 2
            tz.transition 2049, 10, :o7, 2519251200, 4939491, 2
            tz.transition 2050, 3, :o8, 2531952000, 4939785, 2
            tz.transition 2050, 10, :o7, 2550700800, 4940219, 2
            tz.transition 2051, 3, :o8, 2563401600, 4940513, 2
            tz.transition 2051, 10, :o7, 2582150400, 4940947, 2
            tz.transition 2052, 3, :o8, 2595456000, 4941255, 2
            tz.transition 2052, 10, :o7, 2613600000, 4941675, 2
            tz.transition 2053, 3, :o8, 2626905600, 4941983, 2
            tz.transition 2053, 10, :o7, 2645049600, 4942403, 2
            tz.transition 2054, 3, :o8, 2658355200, 4942711, 2
            tz.transition 2054, 10, :o7, 2676499200, 4943131, 2
            tz.transition 2055, 3, :o8, 2689804800, 4943439, 2
            tz.transition 2055, 10, :o7, 2708553600, 4943873, 2
            tz.transition 2056, 3, :o8, 2721254400, 4944167, 2
            tz.transition 2056, 10, :o7, 2740003200, 4944601, 2
            tz.transition 2057, 3, :o8, 2752704000, 4944895, 2
            tz.transition 2057, 10, :o7, 2771452800, 4945329, 2
            tz.transition 2058, 3, :o8, 2784758400, 4945637, 2
            tz.transition 2058, 10, :o7, 2802902400, 4946057, 2
            tz.transition 2059, 3, :o8, 2816208000, 4946365, 2
            tz.transition 2059, 10, :o7, 2834352000, 4946785, 2
            tz.transition 2060, 3, :o8, 2847657600, 4947093, 2
            tz.transition 2060, 10, :o7, 2866406400, 4947527, 2
            tz.transition 2061, 3, :o8, 2879107200, 4947821, 2
            tz.transition 2061, 10, :o7, 2897856000, 4948255, 2
            tz.transition 2062, 3, :o8, 2910556800, 4948549, 2
            tz.transition 2062, 10, :o7, 2929305600, 4948983, 2
            tz.transition 2063, 3, :o8, 2942006400, 4949277, 2
            tz.transition 2063, 10, :o7, 2960755200, 4949711, 2
            tz.transition 2064, 3, :o8, 2974060800, 4950019, 2
            tz.transition 2064, 10, :o7, 2992204800, 4950439, 2
            tz.transition 2065, 3, :o8, 3005510400, 4950747, 2
            tz.transition 2065, 10, :o7, 3023654400, 4951167, 2
            tz.transition 2066, 3, :o8, 3036960000, 4951475, 2
            tz.transition 2066, 10, :o7, 3055708800, 4951909, 2
          end
        end
      end
    end
  end
end
