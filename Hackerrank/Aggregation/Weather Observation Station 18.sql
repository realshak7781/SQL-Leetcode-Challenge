

select round(abs(min(Lat_N)-max(LAT_N)) + abs(min(Long_W)-max(Long_W)),4) as result
from Station
