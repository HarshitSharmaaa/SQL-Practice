Q1. Write a SQL query to generate a Points Table with the following columns: Team, Matches_Played, Wins, Losses, Points.
Table: icc_world_cup
create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);

INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');


Q2. Find New and Repeat Customers
Table: customer_orders
create table customer_orders (
    order_id integer,
    customer_id integer,
    order_date date,
    order_amount integer
);

insert into customer_orders values
(1,100,cast('2022-01-01' as date),2000),
(2,200,cast('2022-01-01' as date),2500),
(3,300,cast('2022-01-01' as date),2100),
(4,100,cast('2022-01-02' as date),2000),
(5,400,cast('2022-01-02' as date),2200),
(6,500,cast('2022-01-02' as date),2700),
(7,100,cast('2022-01-03' as date),3000),
(8,400,cast('2022-01-03' as date),1000),
(9,600,cast('2022-01-03' as date),3000);
For each order_date, find:
order_date, new_customers → Customers who placed their first-ever order on that date, repeat_customers → Customers who had ordered before that date
Return the result ordered by order_date.
