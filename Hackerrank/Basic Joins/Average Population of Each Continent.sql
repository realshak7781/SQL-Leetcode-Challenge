
select co.continent, floor(avg(ci.population))
from City ci inner join Country co on co.code=ci.countrycode
group by co.continent
