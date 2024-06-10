-- getting location of car in which dealership they are in with vin 
use car_dealership;

select d.* -- the (.) selects all columns from whichever table you are selecting in this case the dealerships
from vehicles as v
inner join inventory as i 
on v.vehicle_vin = i.vehicle_vin
inner join dealerships as d
on d.dealership_id = i.dealership_id
where v.vehicle_vin = '2C3CDXBG6JH226579';