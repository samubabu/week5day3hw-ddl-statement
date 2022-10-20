--question1

select customer.first_name, customer.last_name, district
from customer
inner join address on customer.address_id = address.address_id
where district = 'Texas';





--question2
select customer.first_name, customer.last_name, amount
from payment
inner join customer on customer.customer_id = payment.customer_id 
where amount >7;


--question3

select*
from customer c
where customer_id
in (select customer_id from payment group by customer_id having sum (amount) > 175);


--question 4

select*
from city 


select c.first_name, c.last_name, a.district, ci.city, ca.country
from customer c
join address a on c.address_id = a.address_id join city ci
on a.city_id = ci.city_id 
join country ca 
on ci.country_id = ca.country_id 
where ca.country = 'Argentina';

--question 5

select c.category_id, c.name, count(*) as num_movies_in_cat
from category c
join film_category fc
on c.category_id=fc.category_id 
group by c.category_id order by count(*) desc;

--question 6
select f.film_id, f.title, count(*) as num_actors
from film f
join film_actor fa
on f.film_id = fa.film_id group by f.film_id order by num_actors desc limit 1;

--question 7
select *
from film_actor 

select *
from actor 
where actor_id=(select actor_id
from film_actor fa
group by actor_id
order by count(film_id)asc 
limit 1);

--Question 8 (check if this is right-has problems)

select city.country_id, country.country, count (*) as num_cities
from city
join country
on city.country_id = country.country_id
group by country_id, country.country
order by num_cities desc 
limit 1;

--question9

select a.actor_id, a.first_name, a.last_name, count(*)
from actor a
join film_actor fa
on fa.actor_id = a.actor_id 
join film f
on fa.film_id = f.film_id 
group by a.actor_id
having count(*) between 20 and 25;






















