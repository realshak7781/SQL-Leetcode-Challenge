
select round(Long_W,4)
from Station
where Lat_N =(
    select max(Lat_N) from Station where Lat_N<137.2345
)
