use titanic;
select * from titanic;
#Task 1
create view old_passenger as
select first_name,last_name,age from titanic where age>40 and survived=1;
select * from old_passenger;
#task 2
create view passenger as
select survived,class,age,fare from titanic;
select * from passenger;
# Task 3
DELIMITER //
create procedure passenger_agerange1(in age1 int,in age2 int)
Begin
select * from titanic where age between age1 and age2;
end//
DELIMITER ;
call passenger_agerange1(20,40);
# Task 4
Select first_name,last_name,fare,
case
when fare<25000 then "Low"
when fare<40000 then "Medium"
else "High"
end as fareclass
from titanic;
#Task 5
Select first_name,last_name,class,fare,
lead(fare) over(
partition by class order by fare desc)
as next_fare from titanic;
#Task 6
Select age,
lag(age) over(
partition by age order by age desc)
as prev_age from titanic;
#Task 7
select first_name,last_name,class,fare,
rank() over(
partition by class order by fare desc) as fare_rank from titanic;
#task 8
select first_name,last_name,class,fare,
dense_rank() over(
partition by class order by fare desc) as fare_rankgap from titanic;
#Task 9
select first_name,last_name,class,fare,
row_number() over( partition by class order by fare) as rn from titanic;
# Task 10
with average_fare as
(select class,avg(fare)as avg_fare from titanic group by class having avg_fare>2)
select * from average_fare;