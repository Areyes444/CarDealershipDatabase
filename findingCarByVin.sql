-- finding a car by vin in this example im trying to find the car for this vin 'ZACCJABW6GPD47250'

use car_dealership;

select *
from vehicles as v 
inner join inventory as i 
on v.vehicle_vin = i.vehicle_vin
inner join dealerships as d 
on i.dealership_id = d.dealership_id
where v.vehicle_vin = 'ZACCJABW6GPD47250';