1.-- identify the primary key and foreign key in mavenmovies db. discuss the differences.--
answer-SELECT TABLE_NAME, COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME = 'PRIMARY'
  AND TABLE_SCHEMA = 'mavenmovies';

SELECT 
    CONSTRAINT_NAME,
    TABLE_NAME,
    COLUMN_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM
    information_schema.KEY_COLUMN_USAGE
WHERE
    CONSTRAINT_NAME != 'PRIMARY'
        AND REFERENCED_TABLE_NAME IS NOT NULL
        AND TABLE_SCHEMA = 'mavenmovies';
-- Primary Key: Uniquely identifies records within a table.It can  be  unique and Not null Values
-- Foreign Key: Establishes relationships between tables by referencing the primary key of another table.It can contin null values also

2.list all details of actors.
answer- select * from actor;
3.list all customer information from db.
answer- select * from customer;
4.list different countries.
answer-select country from country;
5. display all active customers.
answer- select active from customer.
6.list of all rental ids for customer with id 1.
answer-select rental_id from rental where customer_id=1;
7.display all the films whose rental  duration is greater then 5.
answer-select * from film where rental_duration >5;
8.list the total number of films whose replacement cost is greater than $15 and less than $20.
answer-select count(*) from film where replacement_cost  between 15 and 20;
9.find the number of films whose rental rate is less than $1.
answer- select * from film where rental_rate <1;
10. display the count of unique first name of actors.
answer- select count( distinct ( first_name)) as first_name from actor;
11. display the first 10 records from customer table.
answer-select * from customer limit 10;
12. display the first 3 records from customer  table whose first name start with 'b'.
answer-select * from customer where first_name like ("b%") limit 3;
13.display the names of the first 5 movies which are rated as'g'.
answer- select * from film where rating= "g" limit 5;
14.find all the customer  whose first name starts with 'a'.
answer-select * from customer where first_name like ("a%");
15find all the customer  whose first name  ends with 'a'.
answer- select * from customer where first_name like ("%a");
16.display the list of first 4 cities which start and end with 'a'.
answer-select city from city where city like ("a%a") limit 4;
17. find all customers whose first name have 'ni' in any position.
answer-select * from customer where first_name like ("%ni%");
18.find all customers whose first name have'r' in the second poition.
answer-select * from customer where first_name like ("_r%");
19.find all customers whose first name starts with'a' and are at least 5 character in length.
answer-select * from customer where  first_name like ("a%") and length(first_name)=5;
20.find all customer whose first name starts with'a' and ends with'o'.
answer-select * from customer where  first_name like ("a%o");
21.get the films with pg and pg-13 rating using in operators.
answer-select * from film where rating in ("pg", "pg-13");
22. get the films with length between 50 to 100 using between operator.
answer- select * from film where length between 50 and  100;
23.get the top 50 actors using limit operators.
answer- select * from actor limit 50;
24. get the distinct film ids from inventory table.
answer- select  distinct(film_id)from inventory;