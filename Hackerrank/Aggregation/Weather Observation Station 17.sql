
select round(Long_W,4)
from Station
where Lat_N = (
    select min(Lat_N) from Station where Lat_N > 38.7780
)
