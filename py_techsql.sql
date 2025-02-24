create schema temp_schema;
use temp_schema;
create table temp_schema.table1(
col_string varchar(255),
col_num decimal(10,2),
col_date date);
select * from temp_schema.table1;

insert into temp_schema.table1(col_string,col_num,col_date)
values
('insert1',1,'2025-12-1'),
('insert2',2,'2025-12-2'),
('insert3',3,'2025-12-3'),
('insert4',4,'2025-12-4'),
('insert1',1,'2025-12-5'),
('insert6',6,'2025-12-6'),
('insert7',7,'2025-12-7')
;
create table temp_schema.table2(
col_string varchar(255),
col_num decimal(10,2),
col_date date);
select * from temp_schema.table2;


insert into temp_schema.table2(col_string,col_num,col_date)
select * from temp_schema.table1;

select * from temp_schema.table2;

/*
create table schema.table as
 (select statement);*/
-- copy the table 
CREATE TABLE countries.emp AS 
SELECT
 temp_schema.hr_emp.E_NAME,
 temp_schema.hr_emp.DEPT_NO FROM
    temp_schema.hr_emp;
    select * from temp_schema.hr_emp;
create table temp_schema.table3 as select* from temp_schema.table2; 
select * from temp_schema.table3;
drop table countries.emp;
/*
alter table schema.table
some section;
ecamples of actions:
ADD column_name datatype contraint
Drop column column_name
Modify column column_name datatype
RENAME column old_column_name to new_column_name
rename to new_table_name
modify column moviename containsts unique
modify column id integer unique

add constraint contraint_type
*/
create table temp_schema.alter_demo(
col1 varchar(255),
col2 varchar(255));





insert into temp_schema.alter_demo(col1,col2)
values
("johns",10),
("joan",12);
select * from temp_schema.alter_demo;


alter table temp_schema.alter_demo
add col_add1 date,
add col_add2 date,
add col_add3 date;

alter table temp_schema.alter_demo
drop col_add1;

alter table temp_schema.alter_demo
modify column col2 varchar(10);

describe temp_schema.alter_demo;

alter table temp_schema.alter_demo
rename column col1 to col_str;

select * from temp_schema.alter_demo;


/*
update table_name
set column_1=value,column2=value
where condition;*/


 update countries.employees
 set ename="sakshi"
 where sal=1300;



-- ASSIGNMENT SCHEMA
/*1.CTR A NEW SCHME CALLED ASSIGNMNET SCHEMA
CREATR TABLE MOVIE_RATINGS INSERT SAME RECORDS
ADD CONTRAINT TO TABLE */

CREATE SCHEMA ASSIGNMENT_SCHEMA; 

CREATE TABLE ASSIGNMENT_SCHEMA.MOVIE_RATINGS(
MOVIE_NAME VARCHAR(255) unique,
MOVIE_RATING INT check(MOVIE_RATING >0));

INSERT INTO ASSIGNMENT_SCHEMA.MOVIE_RATINGS VALUES
('BAHUBLI',0);

-- CASE SENCITIVITY DOESNOT MATTER IN MYSQL
-- <>NOT EQUAL TO OPERATOR

create table  customer_orde
