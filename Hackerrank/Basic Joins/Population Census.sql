select sum(ci.population)
from City ci inner join Country co on co.code=ci.countrycode
where co.continent='Asia'
