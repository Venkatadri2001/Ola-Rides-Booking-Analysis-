# Ola Ride Booking Analysis-Dashboard

## Problem Statement

This dashboard helps the Ola aims to optimize its ride-sharing services by analyzing key metrics related to ride volume, vehicle types, revenue generation, cancellation reasons, and ratings. The project focuses on identifying trends in ride volume over time, understanding booking status distributions, evaluating the performance of different vehicle types, and analyzing revenue by payment methods.

Additionally, it delves into cancellation reasons from both customers and drivers and assesses driver and customer ratings to improve service quality and customer satisfaction.

This analysis will support data-driven decision-making to enhance operational efficiency, customer experience, and revenue growth.


### Steps followed
### Performing "SQL Problems" 
- Step 1 : Load data into My SQL Workbench, dataset is a csv file and the table name is bengaluru_bookings_data.
- Step 2 : Worked on different types of Problem-solving techniques to analyse the Ride Bookings by Customers. They are:
-  Retrieve all successful bookings:
           
           SELECT * From bengaluru_bookings_data;

            create view Successful_Booking as
            select * from bengaluru_bookings_data where Booking_Status = "Success";

            select * from Successful_Booking;
Snap of all successful booking status for example,

![Snap_1](https://github.com/user-attachments/assets/6c821001-5279-4247-a0b4-c47a6af6f0d3)

-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)     
-   Get the total number of cancelled rides by customers:
           
            create view Canceled_by_Customers as
            select count(*) from bengaluru_bookings_data
            where Booking_Status="Canceled by Customer";

            select * from Canceled_by_Customers;
Snap of the total number of cancelled rides by customers,

![Snap_3](https://github.com/user-attachments/assets/21ddd3d9-400a-4d35-9e95-741564413dee)
-   List the top 5 customers who booked the highest number of rides:
           
        create view Top_Five_Cust as 
        select Customer_ID, count(Booking_ID) as total_rides from bengaluru_bookings_data
        group by Customer_ID
        order by total_rides desc limit 5;

        select * from Top_Five_Cust;
Snap of the average ride distance for each vehicle type,

![Snap_4](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
-  Find the average ride distance for each vehicle type:
           
            create view Avg_by_Vehicle as
            select Vehicle_Type, avg(Ride_Distance) as average_distance 
            from bengaluru_bookings_data
            group by Vehicle_Type;

            select * from avg_by_vehicle;
Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)
 
![Publish_Message](https://user-images.githubusercontent.com/102996550/174094520-3a845196-97e6-4d44-8760-34a64abc3e77.jpg)

# Snapshot of Dashboard (Power BI Service)

![dashboard_snapo](https://user-images.githubusercontent.com/102996550/174096257-11f1aae5-203d-44fc-bfca-25d37faf3237.jpg)

 
 # Report Snapshot (Power BI DESKTOP)

 
![Dashboard_upload](https://user-images.githubusercontent.com/102996550/174074051-4f08287a-0568-4fdf-8ac9-6762e0d8fa94.jpg)

# Insights

A single page report was created on Power BI Desktop & it was then published to Power BI Service.

Following inferences can be drawn from the dashboard;

### [1] Total Number of Customers = 129880

   Number of satisfied Customers (Male) = 28159 (21.68 %)

   Number of satisfied Customers (Female) = 28269 (21.76 %)

   Number of neutral/unsatisfied customers (Male) = 35822 (27.58 %)

   Number of neutral/unsatisfied customers (Female) = 37630 (28.97 %)


           thus, higher number of customers are neutral/unsatisfied.
           
### [2] Average Ratings

    a) Baggage Handling - 3.63/5
    b) Check-in Service - 3.31/5
    c) Cleanliness - 3.29/5
    d) Ease of online booking - 2.88/5
    e) Food & Drink - 3.21/5
    f) In-flight Entertainment - 3.36/5
    g) In-flight service - 3.64/5
    h) In-flight Wifi service - 2.81/5
    i) Leg room service - 3.37/5
    j) On-board service - 3.38/5
    k) Online boarding - 3.33/5
    l) Seat comfort - 3.44/5
    m) Departure & arrival convenience - 3.22/5
  
  while calculating average rating, null values have been ignored as they were not relevant for some customers. 
  
  These ratings will change if different visual filters will be applied.  
  
  ### [3] Average Delay 
  
      a) Average delay in arrival(minutes) - 15.09
      b) Average delay in departure(minutes) - 14.71
Average delay will change if different visual filters will be applied.

 ### [4] Some other insights
 
 ### Class
 
 1.1) 47.87 % customers travelled by Business class.
 
 1.2) 44.89 % customers travelled by Economy class.
 
 1.3) 7.25 % customers travelled by Economy plus class.
 
         thus, maximum customers travelled by Business class.
 
 ### Age Group
 
 2.1)  21.69 % customers belong to '0-25' age group.
 
 2.2)  52.44 % customers belong to '25-50' age group.
 
 2.3)  25.57 % customers belong to '50-75' age group.
 
 2.4)  0.31 % customers belong to '75-100' age group.
 
         thus, maximum customers belong to '25-50' age group.
         
### Customer Type

3.1) 18.31 % customers have customer type 'First time'.

3.2) 81.69 % customers have customer type 'returning'.
       
       thus, more customers have customer type 'returning'.

### Type of travel

4.1) 69.06 % customers have travel type 'Business'.

4.2) 30.94 % customers have travel type 'Personal'.

        thus, more customers have travel type 'Business'.
