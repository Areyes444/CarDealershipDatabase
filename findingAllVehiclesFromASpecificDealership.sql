-- finding the vehicles for each dealership using their id getting for dealershi with id 2.

use car_dealership;

select *
from vehicles as v
right outer join inventory as i
on v.vehicle_vin = i.vehicle_vin
right outer join dealerships as d
on i.dealership_id = d.dealership_id
where d.dealership_id = 2; 
