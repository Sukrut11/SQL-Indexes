# MYSQL indexes -- [Used to create indexes in table]
 -- Indexes are used to make the query faster
 /* eg - You have a book with indexes. It makes you search a topic lot faster.
But if your book does not have indexes, it will make your search topic slower.
Indexing makes your query work a lot faster.
But if we want to use ALTER, CREATE or UPDATE commands during this process, this commands operate slower.
*/

show databases;
use jio;
show tables;
select * from person;
desc person;
create index index_city_name
on person(city_name);
desc person;

# You will not understand if indexing has been applied or not on the first go
# Creating index on Multiple columns
create index id_first_name
on person(id, first_name);

# Dropping index
alter table person
drop index id_first_name;

alter table person
drop index index_city_name;