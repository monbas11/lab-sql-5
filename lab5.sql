select * from staff;

alter table staff
drop column picture;
select * from staff;


select * from customer;
insert into customer values
(600, 1, 'TAMMY', 'SANDERS', 'TAMMY.SANDERS@sakilacustomer.org', '14' , '1', '2023-12-09 14:00:00', '2023-12-09 14:00:00');



select * from film
where title = 'Academy Dinosaur'; 

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- customer id = 130

select film_id from film
where title = 'Academy Dinosaur';
-- result 1

select staff_id from rental
where customer_id = 130;
-- result 1 or 2

select * from inventory 
where film_id = 1;
-- serveral 


select * from rental
order by rental_id desc;

select * from rental ;
insert into rental values 
(16050, '2023-12-01 14:00:00', 1, 130, '2023-12-09 15:00:00', 1, '2023-12-09 16:00:00');



select * from customer
where active = 0;

CREATE TABLE deleted_users (
    customer_id INT,
    store_id INT,
    first_name char(20),
    last_name char (20),
	mail VARCHAR(255),
    address_id INT,
    active INT,
    create_date date,
    last_update DATE);

alter table deleted_users
rename column mail to email;
select * from deleted_users;

INSERT INTO deleted_users (customer_id, store_id, first_name, last_name, email, address_id, active, create_date, last_update)
SELECT customer_id, store_id, first_name, last_name, email, address_id, active, create_date, last_update
FROM customer
WHERE active = 0;

select * from deleted_users;

SET SQL_SAFE_UPDATES = 0;
delete from customer where active = 0;





