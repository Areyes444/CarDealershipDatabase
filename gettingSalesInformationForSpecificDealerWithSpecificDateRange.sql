-- gets all sales info for a specific dealer for a specific date range 

use car_dealership;

select sc.*
from sales_contract as sc
inner join inventory as i 
on sc.vehicle_vin = i.vehicle_vin
inner join dealerships as d
on i.dealership_id = d.dealership_id
where d.dealership_id = 2 and sc.date between '2024-01-01' and '2024-06-30';
