
select round(st.lat_n,4)
from Station as st
where (select count(lat_n) from Station where lat_n<st.lat_n)=(select count(lat_n) from Station where lat_n>st.lat_n)
