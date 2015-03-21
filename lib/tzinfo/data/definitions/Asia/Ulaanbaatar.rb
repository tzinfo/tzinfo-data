# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Asia
        module Ulaanbaatar
          include TimezoneDefinition
          
          timezone 'Asia/Ulaanbaatar' do |tz|
            tz.offset :o0, 25652, 0, :LMT
            tz.offset :o1, 25200, 0, :ULAT
            tz.offset :o2, 28800, 0, :ULAT
            tz.offset :o3, 28800, 3600, :ULAST
            
            tz.transition 1905, 7, :o1, -2032931252, 52208457187, 21600
            tz.transition 1977, 12, :o2, 252435600
            tz.transition 1983, 3, :o3, 417974400
            tz.transition 1983, 9, :o2, 433782000
            tz.transition 1984, 3, :o3, 449596800
            tz.transition 1984, 9, :o2, 465318000
            tz.transition 1985, 3, :o3, 481046400
            tz.transition 1985, 9, :o2, 496767600
            tz.transition 1986, 3, :o3, 512496000
            tz.transition 1986, 9, :o2, 528217200
            tz.transition 1987, 3, :o3, 543945600
            tz.transition 1987, 9, :o2, 559666800
            tz.transition 1988, 3, :o3, 575395200
            tz.transition 1988, 9, :o2, 591116400
            tz.transition 1989, 3, :o3, 606844800
            tz.transition 1989, 9, :o2, 622566000
            tz.transition 1990, 3, :o3, 638294400
            tz.transition 1990, 9, :o2, 654620400
            tz.transition 1991, 3, :o3, 670348800
            tz.transition 1991, 9, :o2, 686070000
            tz.transition 1992, 3, :o3, 701798400
            tz.transition 1992, 9, :o2, 717519600
            tz.transition 1993, 3, :o3, 733248000
            tz.transition 1993, 9, :o2, 748969200
            tz.transition 1994, 3, :o3, 764697600
            tz.transition 1994, 9, :o2, 780418800
            tz.transition 1995, 3, :o3, 796147200
            tz.transition 1995, 9, :o2, 811868400
            tz.transition 1996, 3, :o3, 828201600
            tz.transition 1996, 9, :o2, 843922800
            tz.transition 1997, 3, :o3, 859651200
            tz.transition 1997, 9, :o2, 875372400
            tz.transition 1998, 3, :o3, 891100800
            tz.transition 1998, 9, :o2, 906822000
            tz.transition 2001, 4, :o3, 988394400
            tz.transition 2001, 9, :o2, 1001696400
            tz.transition 2002, 3, :o3, 1017424800
            tz.transition 2002, 9, :o2, 1033146000
            tz.transition 2003, 3, :o3, 1048874400
            tz.transition 2003, 9, :o2, 1064595600
            tz.transition 2004, 3, :o3, 1080324000
            tz.transition 2004, 9, :o2, 1096045200
            tz.transition 2005, 3, :o3, 1111773600
            tz.transition 2005, 9, :o2, 1127494800
            tz.transition 2006, 3, :o3, 1143223200
            tz.transition 2006, 9, :o2, 1159549200
            tz.transition 2015, 3, :o3, 1427479200
            tz.transition 2015, 9, :o2, 1443193200
            tz.transition 2016, 3, :o3, 1458928800
            tz.transition 2016, 9, :o2, 1474642800
            tz.transition 2017, 3, :o3, 1490378400
            tz.transition 2017, 9, :o2, 1506697200
            tz.transition 2018, 3, :o3, 1522432800
            tz.transition 2018, 9, :o2, 1538146800
            tz.transition 2019, 3, :o3, 1553882400
            tz.transition 2019, 9, :o2, 1569596400
            tz.transition 2020, 3, :o3, 1585332000
            tz.transition 2020, 9, :o2, 1601046000
            tz.transition 2021, 3, :o3, 1616781600
            tz.transition 2021, 9, :o2, 1632495600
            tz.transition 2022, 3, :o3, 1648231200
            tz.transition 2022, 9, :o2, 1663945200
            tz.transition 2023, 3, :o3, 1679680800
            tz.transition 2023, 9, :o2, 1695999600
            tz.transition 2024, 3, :o3, 1711735200
            tz.transition 2024, 9, :o2, 1727449200
            tz.transition 2025, 3, :o3, 1743184800
            tz.transition 2025, 9, :o2, 1758898800
            tz.transition 2026, 3, :o3, 1774634400
            tz.transition 2026, 9, :o2, 1790348400
            tz.transition 2027, 3, :o3, 1806084000
            tz.transition 2027, 9, :o2, 1821798000
            tz.transition 2028, 3, :o3, 1837533600
            tz.transition 2028, 9, :o2, 1853852400
            tz.transition 2029, 3, :o3, 1869588000
            tz.transition 2029, 9, :o2, 1885302000
            tz.transition 2030, 3, :o3, 1901037600
            tz.transition 2030, 9, :o2, 1916751600
            tz.transition 2031, 3, :o3, 1932487200
            tz.transition 2031, 9, :o2, 1948201200
            tz.transition 2032, 3, :o3, 1963936800
            tz.transition 2032, 9, :o2, 1979650800
            tz.transition 2033, 3, :o3, 1995386400
            tz.transition 2033, 9, :o2, 2011100400
            tz.transition 2034, 3, :o3, 2026836000
            tz.transition 2034, 9, :o2, 2043154800
            tz.transition 2035, 3, :o3, 2058890400
            tz.transition 2035, 9, :o2, 2074604400
            tz.transition 2036, 3, :o3, 2090340000
            tz.transition 2036, 9, :o2, 2106054000
            tz.transition 2037, 3, :o3, 2121789600
            tz.transition 2037, 9, :o2, 2137503600
            tz.transition 2038, 3, :o3, 2153239200, 9862037, 4
            tz.transition 2038, 9, :o2, 2168953200, 19725529, 8
            tz.transition 2039, 3, :o3, 2184688800, 9863493, 4
            tz.transition 2039, 9, :o2, 2200402800, 19728441, 8
            tz.transition 2040, 3, :o3, 2216743200, 9864977, 4
            tz.transition 2040, 9, :o2, 2232457200, 19731409, 8
            tz.transition 2041, 3, :o3, 2248192800, 9866433, 4
            tz.transition 2041, 9, :o2, 2263906800, 19734321, 8
            tz.transition 2042, 3, :o3, 2279642400, 9867889, 4
            tz.transition 2042, 9, :o2, 2295356400, 19737233, 8
            tz.transition 2043, 3, :o3, 2311092000, 9869345, 4
            tz.transition 2043, 9, :o2, 2326806000, 19740145, 8
            tz.transition 2044, 3, :o3, 2342541600, 9870801, 4
            tz.transition 2044, 9, :o2, 2358255600, 19743057, 8
            tz.transition 2045, 3, :o3, 2373991200, 9872257, 4
            tz.transition 2045, 9, :o2, 2390310000, 19746025, 8
            tz.transition 2046, 3, :o3, 2406045600, 9873741, 4
            tz.transition 2046, 9, :o2, 2421759600, 19748937, 8
            tz.transition 2047, 3, :o3, 2437495200, 9875197, 4
            tz.transition 2047, 9, :o2, 2453209200, 19751849, 8
            tz.transition 2048, 3, :o3, 2468944800, 9876653, 4
            tz.transition 2048, 9, :o2, 2484658800, 19754761, 8
            tz.transition 2049, 3, :o3, 2500394400, 9878109, 4
            tz.transition 2049, 9, :o2, 2516108400, 19757673, 8
            tz.transition 2050, 3, :o3, 2531844000, 9879565, 4
            tz.transition 2050, 9, :o2, 2547558000, 19760585, 8
            tz.transition 2051, 3, :o3, 2563293600, 9881021, 4
            tz.transition 2051, 9, :o2, 2579612400, 19763553, 8
            tz.transition 2052, 3, :o3, 2595348000, 9882505, 4
            tz.transition 2052, 9, :o2, 2611062000, 19766465, 8
            tz.transition 2053, 3, :o3, 2626797600, 9883961, 4
            tz.transition 2053, 9, :o2, 2642511600, 19769377, 8
            tz.transition 2054, 3, :o3, 2658247200, 9885417, 4
            tz.transition 2054, 9, :o2, 2673961200, 19772289, 8
            tz.transition 2055, 3, :o3, 2689696800, 9886873, 4
            tz.transition 2055, 9, :o2, 2705410800, 19775201, 8
            tz.transition 2056, 3, :o3, 2721146400, 9888329, 4
            tz.transition 2056, 9, :o2, 2737465200, 19778169, 8
            tz.transition 2057, 3, :o3, 2753200800, 9889813, 4
            tz.transition 2057, 9, :o2, 2768914800, 19781081, 8
            tz.transition 2058, 3, :o3, 2784650400, 9891269, 4
            tz.transition 2058, 9, :o2, 2800364400, 19783993, 8
            tz.transition 2059, 3, :o3, 2816100000, 9892725, 4
            tz.transition 2059, 9, :o2, 2831814000, 19786905, 8
            tz.transition 2060, 3, :o3, 2847549600, 9894181, 4
            tz.transition 2060, 9, :o2, 2863263600, 19789817, 8
            tz.transition 2061, 3, :o3, 2878999200, 9895637, 4
            tz.transition 2061, 9, :o2, 2894713200, 19792729, 8
            tz.transition 2062, 3, :o3, 2910448800, 9897093, 4
            tz.transition 2062, 9, :o2, 2926767600, 19795697, 8
            tz.transition 2063, 3, :o3, 2942503200, 9898577, 4
            tz.transition 2063, 9, :o2, 2958217200, 19798609, 8
            tz.transition 2064, 3, :o3, 2973952800, 9900033, 4
            tz.transition 2064, 9, :o2, 2989666800, 19801521, 8
            tz.transition 2065, 3, :o3, 3005402400, 9901489, 4
            tz.transition 2065, 9, :o2, 3021116400, 19804433, 8
          end
        end
      end
    end
  end
end
