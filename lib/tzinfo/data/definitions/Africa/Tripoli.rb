# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module Africa
        module Tripoli
          include TimezoneDefinition
          
          timezone 'Africa/Tripoli' do |tz|
            tz.offset :o0, 3164, 0, :LMT
            tz.offset :o1, 3600, 0, :CET
            tz.offset :o2, 3600, 3600, :CEST
            tz.offset :o3, 7200, 0, :EET
            
            tz.transition 1919, 12, :o1, -1577926364, 52322208409, 21600
            tz.transition 1951, 10, :o2, -574902000, 58414405, 24
            tz.transition 1951, 12, :o1, -568087200, 29208149, 12
            tz.transition 1953, 10, :o2, -512175600, 58431829, 24
            tz.transition 1953, 12, :o1, -504928800, 29216921, 12
            tz.transition 1955, 9, :o2, -449888400, 58449131, 24
            tz.transition 1955, 12, :o1, -441856800, 29225681, 12
            tz.transition 1958, 12, :o3, -347158800, 58477667, 24
            tz.transition 1981, 12, :o1, 378684000
            tz.transition 1982, 3, :o2, 386463600
            tz.transition 1982, 9, :o1, 402271200
            tz.transition 1983, 3, :o2, 417999600
            tz.transition 1983, 9, :o1, 433807200
            tz.transition 1984, 3, :o2, 449622000
            tz.transition 1984, 9, :o1, 465429600
            tz.transition 1985, 4, :o2, 481590000
            tz.transition 1985, 9, :o1, 496965600
            tz.transition 1986, 4, :o2, 512953200
            tz.transition 1986, 10, :o1, 528674400
            tz.transition 1987, 3, :o2, 544230000
            tz.transition 1987, 9, :o1, 560037600
            tz.transition 1988, 3, :o2, 575852400
            tz.transition 1988, 9, :o1, 591660000
            tz.transition 1989, 3, :o2, 607388400
            tz.transition 1989, 9, :o1, 623196000
            tz.transition 1990, 5, :o3, 641775600
            tz.transition 1996, 9, :o1, 844034400
            tz.transition 1997, 4, :o2, 860108400
            tz.transition 1997, 10, :o3, 875916000
            tz.transition 2012, 11, :o1, 1352505600
            tz.transition 2013, 3, :o2, 1364515200
            tz.transition 2013, 10, :o1, 1382659200
            tz.transition 2014, 3, :o2, 1395964800
            tz.transition 2014, 10, :o1, 1414713600
            tz.transition 2015, 3, :o2, 1427414400
            tz.transition 2015, 10, :o1, 1446163200
            tz.transition 2016, 3, :o2, 1458864000
            tz.transition 2016, 10, :o1, 1477612800
            tz.transition 2017, 3, :o2, 1490918400
            tz.transition 2017, 10, :o1, 1509062400
            tz.transition 2018, 3, :o2, 1522368000
            tz.transition 2018, 10, :o1, 1540512000
            tz.transition 2019, 3, :o2, 1553817600
            tz.transition 2019, 10, :o1, 1571961600
            tz.transition 2020, 3, :o2, 1585267200
            tz.transition 2020, 10, :o1, 1604016000
            tz.transition 2021, 3, :o2, 1616716800
            tz.transition 2021, 10, :o1, 1635465600
            tz.transition 2022, 3, :o2, 1648166400
            tz.transition 2022, 10, :o1, 1666915200
            tz.transition 2023, 3, :o2, 1680220800
            tz.transition 2023, 10, :o1, 1698364800
            tz.transition 2024, 3, :o2, 1711670400
            tz.transition 2024, 10, :o1, 1729814400
            tz.transition 2025, 3, :o2, 1743120000
            tz.transition 2025, 10, :o1, 1761868800
            tz.transition 2026, 3, :o2, 1774569600
            tz.transition 2026, 10, :o1, 1793318400
            tz.transition 2027, 3, :o2, 1806019200
            tz.transition 2027, 10, :o1, 1824768000
            tz.transition 2028, 3, :o2, 1838073600
            tz.transition 2028, 10, :o1, 1856217600
            tz.transition 2029, 3, :o2, 1869523200
            tz.transition 2029, 10, :o1, 1887667200
            tz.transition 2030, 3, :o2, 1900972800
            tz.transition 2030, 10, :o1, 1919116800
            tz.transition 2031, 3, :o2, 1932422400
            tz.transition 2031, 10, :o1, 1951171200
            tz.transition 2032, 3, :o2, 1963872000
            tz.transition 2032, 10, :o1, 1982620800
            tz.transition 2033, 3, :o2, 1995321600
            tz.transition 2033, 10, :o1, 2014070400
            tz.transition 2034, 3, :o2, 2027376000
            tz.transition 2034, 10, :o1, 2045520000
            tz.transition 2035, 3, :o2, 2058825600
            tz.transition 2035, 10, :o1, 2076969600
            tz.transition 2036, 3, :o2, 2090275200
            tz.transition 2036, 10, :o1, 2109024000
            tz.transition 2037, 3, :o2, 2121724800
            tz.transition 2037, 10, :o1, 2140473600
            tz.transition 2038, 3, :o2, 2153174400, 4931017, 2
            tz.transition 2038, 10, :o1, 2171923200, 4931451, 2
            tz.transition 2039, 3, :o2, 2184624000, 4931745, 2
            tz.transition 2039, 10, :o1, 2203372800, 4932179, 2
            tz.transition 2040, 3, :o2, 2216678400, 4932487, 2
            tz.transition 2040, 10, :o1, 2234822400, 4932907, 2
            tz.transition 2041, 3, :o2, 2248128000, 4933215, 2
            tz.transition 2041, 10, :o1, 2266272000, 4933635, 2
            tz.transition 2042, 3, :o2, 2279577600, 4933943, 2
            tz.transition 2042, 10, :o1, 2298326400, 4934377, 2
            tz.transition 2043, 3, :o2, 2311027200, 4934671, 2
            tz.transition 2043, 10, :o1, 2329776000, 4935105, 2
            tz.transition 2044, 3, :o2, 2342476800, 4935399, 2
            tz.transition 2044, 10, :o1, 2361225600, 4935833, 2
            tz.transition 2045, 3, :o2, 2374531200, 4936141, 2
            tz.transition 2045, 10, :o1, 2392675200, 4936561, 2
            tz.transition 2046, 3, :o2, 2405980800, 4936869, 2
            tz.transition 2046, 10, :o1, 2424124800, 4937289, 2
            tz.transition 2047, 3, :o2, 2437430400, 4937597, 2
            tz.transition 2047, 10, :o1, 2455574400, 4938017, 2
            tz.transition 2048, 3, :o2, 2468880000, 4938325, 2
            tz.transition 2048, 10, :o1, 2487628800, 4938759, 2
            tz.transition 2049, 3, :o2, 2500329600, 4939053, 2
            tz.transition 2049, 10, :o1, 2519078400, 4939487, 2
            tz.transition 2050, 3, :o2, 2531779200, 4939781, 2
            tz.transition 2050, 10, :o1, 2550528000, 4940215, 2
            tz.transition 2051, 3, :o2, 2563833600, 4940523, 2
            tz.transition 2051, 10, :o1, 2581977600, 4940943, 2
            tz.transition 2052, 3, :o2, 2595283200, 4941251, 2
            tz.transition 2052, 10, :o1, 2613427200, 4941671, 2
            tz.transition 2053, 3, :o2, 2626732800, 4941979, 2
            tz.transition 2053, 10, :o1, 2645481600, 4942413, 2
            tz.transition 2054, 3, :o2, 2658182400, 4942707, 2
            tz.transition 2054, 10, :o1, 2676931200, 4943141, 2
            tz.transition 2055, 3, :o2, 2689632000, 4943435, 2
            tz.transition 2055, 10, :o1, 2708380800, 4943869, 2
            tz.transition 2056, 3, :o2, 2721686400, 4944177, 2
            tz.transition 2056, 10, :o1, 2739830400, 4944597, 2
            tz.transition 2057, 3, :o2, 2753136000, 4944905, 2
            tz.transition 2057, 10, :o1, 2771280000, 4945325, 2
            tz.transition 2058, 3, :o2, 2784585600, 4945633, 2
            tz.transition 2058, 10, :o1, 2802729600, 4946053, 2
            tz.transition 2059, 3, :o2, 2816035200, 4946361, 2
            tz.transition 2059, 10, :o1, 2834784000, 4946795, 2
            tz.transition 2060, 3, :o2, 2847484800, 4947089, 2
            tz.transition 2060, 10, :o1, 2866233600, 4947523, 2
            tz.transition 2061, 3, :o2, 2878934400, 4947817, 2
            tz.transition 2061, 10, :o1, 2897683200, 4948251, 2
            tz.transition 2062, 3, :o2, 2910988800, 4948559, 2
            tz.transition 2062, 10, :o1, 2929132800, 4948979, 2
            tz.transition 2063, 3, :o2, 2942438400, 4949287, 2
            tz.transition 2063, 10, :o1, 2960582400, 4949707, 2
          end
        end
      end
    end
  end
end
