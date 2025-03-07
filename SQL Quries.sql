SELECT * From bengaluru_bookings_data;

create view Successful_Booking as
select * from bengaluru_bookings_data where Booking_Status = "Success";

select * from Successful_Booking;

create view Avg_by_Vehicle as
select Vehicle_Type, avg(Ride_Distance) as average_distance from bengaluru_bookings_data
group by Vehicle_Type;

select * from avg_by_vehicle;

create view Canceled_by_Customers as
select count(*) from bengaluru_bookings_data
where Booking_Status="Canceled by Customer";

select * from Canceled_by_Customers;

create view Top_Five_Cust as 
select Customer_ID, count(Booking_ID) as total_rides from bengaluru_bookings_data
group by Customer_ID
order by total_rides desc limit 5;

select * from Top_Five_Cust;

create view Cancelled_by_Driv_P_C_Issue as
select count(*) from bengaluru_bookings_data
where Canceled_Rides_by_Driver = "Personal & Car related issue";

select * from Cancelled_by_Driv_P_C_Issue;

 -- Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view Ratings_Max_Min as
select max(Driver_Ratings) as max_rating, min(Driver_Ratings) as min_ratings
from bengaluru_bookings_data where Vehicle_Type="Prime Sedan";

select * from Ratings_Max_Min;

-- Retrieve all rides where payment was made using UPI:?-- 

-- create view UPI_Pay as 
select * from bengaluru_bookings_data where Payment_Method="UPI";

select count(*) from UPI_Pay;

--  Find the average customer rating per vehicle type:

create view Avg_Cus_Rat as
select Vehicle_Type, avg(Customer_Rating) as avg_Rating from bengaluru_bookings_data
group by Vehicle_Type;

select * from Avg_Cus_Rat;

-- Calculate the total booking value of rides completed successfully:
create view Total_Bookings as
select sum(Booking_Value) as Total_Booking_Value from bengaluru_bookings_data
where Booking_Status="Success";

select * from Total_Bookings;

 -- List all incomplete rides along with the reason:
 
 create view Inc_Rides_Reason as
 select Booking_ID, Incomplete_Rides_Reason from bengaluru_bookings_data
 where Incomplete_Rides="Yes";
 select * from Inc_Rides_Reason;
 
 select * from Inc_Rides_Reason where Incomplete_Rides_Reason="Other Issue";
