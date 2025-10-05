select ci.Name
from City ci Inner join Country co on ci.CountryCode=co.Code
where CONTINENT ='Africa'
