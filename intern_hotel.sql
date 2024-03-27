create database hotel
create table hotel_reservation(Booking_ID varchar(50), no_of_adults int,no_of_children int,	no_of_weekend_nights int,	
no_of_week_nights int,	type_of_meal_plan varchar(50),	room_type_reserved varchar(50),	
lead_time int,	arrival_date text,	market_segment_type varchar(50),	
avg_price_per_room decimal,	booking_status varchar(50)
)

select * from hotel_reservation
copy hotel_reservation from 'C:/Users/user/Documents/Hotel Reservation Dataset.csv' delimeter ',' CSV HEADER

set datestyle = 'ISO, DMY';
select to_char(arrival_date ::date, 'YYYY-MM-DD') AS formatted_date
from hotel_reservation

-- Set datestyle temporarily
set datestyle = 'ISO, DMY';

-- Update the date column in your_table with the formatted dates
update hotel_reservation
set arrival_date = to_char(arrival_date::date, 'YYYY-MM-DD');

-- Alter the table to change the data type of the column
alter table hotel_reservation
alter column arrival_date
set data type date
using arrival_date::date

--1. What is the total number of reservations in the dataset?
select count(*) as total_reservations
from hotel_reservation

--2. Which meal plan is the most popular among guests?
select type_of_meal_plan, count(*)as meal_plan_count
from hotel_reservation
group by type_of_meal_plan
order by meal_plan_count desc
limit 1

--3. What is the average price per room for reservations involving children?
select round(avg(avg_price_per_room),2) as average_price
from hotel_reservation
where no_of_children > 0

--4. How many reservations were made for the year 2018?
select count(*) as reservations_in_2018
from hotel_reservation
where extract(year from arrival_date) = 2018

--5. What is the most commonly booked room type?
select room_type_reserved, count(*) as room_type_count
from hotel_reservation
group by room_type_reserved
order by room_type_count desc
limit 1
--6. How many reservations fall on a weekend?
select count(*) as no_of_weekend_nights_reservations
from hotel_reservation
where no_of_weekend_nights > 0

--7. What is the highest and lowest lead time for reservations?
select max(lead_time) as highest_lead_time,
min(lead_time) as lowest_lead_time
from hotel_reservation

--8. What is the most common market segment type for reservations?
select market_segment_type, count(*) as segment_type_count
from hotel_reservation
group by market_segment_type
order by segment_type_count desc
limit 1
--9. How many reservations have a booking status of "Confirmed"?
select booking_status, count(*)as confirmed_reservations
from hotel_reservation
where booking_status= 'Not_Canceled'
group by booking_status

--10. What is the total number of adults and children across all reservations?
select sum(no_of_adults) as total_adults,sum(no_of_children) as total_children
from hotel_reservation

--11. What is the average number of weekend nights for reservations involving children?
select round(avg(no_of_weekend_nights),0) as avg_weekend_nights_children
from hotel_reservation
where no_of_children >0

--12. How many reservations were made in each month of the year?

select to_char(arrival_date, 'Month') AS month_name,
       count(*) AS reservations_count
from hotel_reservation
group by month_name
order by max(arrival_date)

--13. What is the average number of nights (both weekend and weekday) spent by guests for each room
--type?
select room_type_reserved,
round(avg(no_of_week_nights+no_of_weekend_nights),0) as avg_nights
from hotel_reservation
group by room_type_reserved

--14. For reservations involving children, what is the most common room type, and what is the average 
--price for that room type?
select room_type_reserved,count(*) as room_type_count,
round(avg(avg_price_per_room),2) as avg_price
from hotel_reservation
where no_of_children > 0
group by room_type_reserved
order by room_type_count desc
limit 1



--15. Find the market segment type that generates the highest average price per room.
select market_segment_type, round(avg(avg_price_per_room),2) as avg_price
from hotel_reservation
group by market_segment_type
order by avg_price desc
limit 1