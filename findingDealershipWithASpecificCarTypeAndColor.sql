-- finding all dealerships that have a certain car type for example sedans and specific color white 

use car_dealership;

select d.*
from dealerships as d
inner join inventory as i
on d.dealership_id = i.dealership_id
inner join vehicles as v
on i.vehicle_vin = v.vehicle_vin
where v.vehicle_type = 'sedan' and v.vehicle_color= 'white';