-- write your queries here
select *
from owners
join vehicles on owners.id = vehicles.owner_id;

select o.first_name, o.last_name, count(v.id) as vehicle_count
from owners o
left join vehicles v on o.id = v.owner_id
group by o.first_name, o.last_name
order by o.first_name ASC; 

select o.first_name, o.last_name, round(avg(v.price)) as avg_price, count(v.id) as vehicle_count
from owners o
join vehicles v on o.id = v.owner_id
group by o.first_name, o.last_name
having count(v.id) > 1 and avg(v.price) > 10000
order by o.first_name desc; 