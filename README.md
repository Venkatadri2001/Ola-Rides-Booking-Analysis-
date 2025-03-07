# Ola Ride Bookings Analysis(July-2024)-Dashboard

## Problem Statement

This Analysis and dashboard helps the Ola aims to optimize its ride-sharing services by analyzing key metrics related to ride volume, vehicle types, revenue generation, cancellation reasons, and ratings. The project focuses on identifying trends in ride volume over time, understanding booking status distributions, evaluating the performance of different vehicle types, and analyzing revenue by payment methods.

Additionally, it delves into cancellation reasons from both customers and drivers and assesses driver and customer ratings to improve service quality and customer satisfaction.

This analysis will support data-driven decision-making to enhance operational efficiency, customer experience, and revenue growth.


### Steps followed
### Performing Analysis with "My SQL" 
- Step 1 : Load data into My SQL Workbench, dataset is a csv file and the table name is bengaluru_bookings_data. The Interface like this:
The table contains 19 Data Columns, They are:
           
        1.Date
        2.Time
        3.Booking_ID
        4.Booking_Status
        5.Customer_ID
        6.Vehicle_Type
        7.Pickup_Location
        8.Drop_Location
        9.V_TAT
        10.C_TAT
        11.cancelled_Rides_by_Customer
        12.cancelled_Rides_by_Driver
        13.Incomplete_Rides
        14.Incomplete_Rides_Reason
        15.Booking_Value
        16.Payment_Method
        17.Ride_Distance
        18.Driver_Ratings
        19.Customer_Rating

![Snap_0](https://github.com/user-attachments/assets/125436e9-8c73-4d57-a8e0-43125cb9dc28)
- Step 2 : Worked on different types of Problem-solving techniques by SQL Queries with Views to analyse the Ride Bookings by Customers. They are:
-  1.Retrieve all successful bookings:
           
        SELECT * From bengaluru_bookings_data;
        create view Successful_Booking as
        select * from bengaluru_bookings_data where Booking_Status = "Success";

        select * from Successful_Booking;

Snap of all successful booking status for example,

![Snap_1](https://github.com/user-attachments/assets/6c821001-5279-4247-a0b4-c47a6af6f0d3)

-  2.Find the average ride distance for each vehicle type:
           
        create view Avg_by_Vehicle as
        select Vehicle_Type, avg(Ride_Distance) as average_distance from bengaluru_bookings_data
        group by Vehicle_Type;

        select * from avg_by_vehicle;

Snap of the average ride distance for each vehicle type,

![Snap_2](https://github.com/user-attachments/assets/70c20f5f-3770-4491-b0ae-acd6551a6981)     
-   3.Get the total number of cancelled rides by customers:
           
        create view Canceled_by_Customers as
        select count(*) from bengaluru_bookings_data
        where Booking_Status="Canceled by Customer";

        select * from Canceled_by_Customers;

Snap of the total number of cancelled rides by customers,

![Snap_3](https://github.com/user-attachments/assets/21ddd3d9-400a-4d35-9e95-741564413dee)
-   4.List the top 5 customers who booked the highest number of rides:
           
        create view Top_Five_Cust as 
        select Customer_ID, count(Booking_ID) as total_rides from bengaluru_bookings_data
        group by Customer_ID
        order by total_rides desc limit 5;

        select * from Top_Five_Cust;

Snap of the top 5 customers who booked the highest number of rides,

![Snap_4](https://github.com/user-attachments/assets/8d98de15-48b4-4211-a7f8-5e704f94b765)
-  5.Get the number of rides cancelled by drivers due to personal and car-related issues:
           
        create view Cancelled_by_Driv_P_C_Issue as 
        select count(*) from bengaluru_bookings_data where Canceled_Rides_by_Driver = "Personal & Car related issue";

        select * from Cancelled_by_Driv_P_C_Issue;

Snap of the number of rides cancelled by drivers due to personal and car-related issues,

![Snap_5](https://github.com/user-attachments/assets/2d4cf094-30a1-4be8-ab87-e74dab1078e2)
-  6.Find the maximum and minimum driver ratings for Prime Sedan bookings:
           
        create view Ratings_Max_Min as
        select max(Driver_Ratings) as max_rating, min(Driver_Ratings) as min_ratings
        from bengaluru_bookings_data where Vehicle_Type="Prime Sedan";

        select * from Ratings_Max_Min;

Snap of the maximum and minimum driver ratings for Prime Sedan bookings,

![Snap_6](https://github.com/user-attachments/assets/b4744232-5f41-4df2-96ce-f60ec1df5a4d)
-  7.Retrieve all rides where payment was made using UPI:
           
        select * from bengaluru_bookings_data where Payment_Method="UPI";

Snap of the Retrieve all rides where payment was made using UPI,

![Snap_7](https://github.com/user-attachments/assets/486128e1-0f27-4246-996d-eac1a954dd4c)
-  8.Find the average customer rating per vehicle type:
           
        create view Avg_Cus_Rat as
        select Vehicle_Type, avg(Customer_Rating) as avg_Rating from bengaluru_bookings_data
        group by Vehicle_Type;

        select * from Avg_Cus_Rat;

Snap of the average customer rating per vehicle type:,

![Snap_8](https://github.com/user-attachments/assets/53c25c48-d11e-4826-a1c4-44152d4613fa)
-  9.Calculate the total booking value of rides completed successfully:
           
        create view Total_Bookings as
        select sum(Booking_Value) as Total_Booking_Value from bengaluru_bookings_data
        where Booking_Status="Success";

        select * from Total_Bookings;

Snap of the total booking value of rides completed successfully,

![Snap_9](https://github.com/user-attachments/assets/a809dde8-5616-43b1-b19c-de3efb72d8d4)
-  10.List all incomplete rides along with the reason:
           
        create view Inc_Rides_Reason as
        select Booking_ID, Incomplete_Rides_Reason from bengaluru_bookings_data
        where Incomplete_Rides="Yes";

        select * from Inc_Rides_Reason;

Snap of the List all incomplete rides along with the reason, for example

![Snap_10](https://github.com/user-attachments/assets/f3dd38da-2e34-443b-a1a3-44f0d403b1da)
- 11.List all incomplete rides only with the "Othet Issue":
as we have incomplete rides view i am applied one filter to it 
           
        select * from Inc_Rides_Reason where Incomplete_Rides_Reason="Other Issue";

Snap of the incomplete rides only with the "Othet Issue", for example

![Snap_11](https://github.com/user-attachments/assets/32865d67-13dc-42e5-8936-c01e69ed6731)

### Performing "Power BI Operations" 
- Step 1 : Load data into Power BI Desktop, dataset is a csv file.
- Step 2 : Open power query editor & in view tab under Data preview section, check "column distribution", "column quality" & "column profile" options. And I performed these Operations mentioned below; 
- 1.Ride Volume Over Time
- 2.Booking Status Breakdown
- 3.Top 5 Vehicle Types by Ride Distance
- 4.Average Customer Ratings by Vehicle Type
- 5.cancelled Rides Reasons
- 6.Revenue by Payment Method
- 7.Top 5 Customers by Total Booking Value
- 8.Ride Distance Distribution Per Day
- 9.Driver Ratings Distribution
- 10.Customer vs. Driver Ratings
  
![Publish_Message](https://github.com/user-attachments/assets/cd2faac2-da79-4171-9a57-f3ef28204334)

# Snapshot of Dashboard (Power BI Desktop)

![dashboard_snapo](https://github.com/user-attachments/assets/ed7ddb1c-53fd-4938-bd35-2e5233303b60)
 
# Report Snapshot "Overall Page"
- Ride Volume Over Time
- Booking Status Breakdown
 
![Dashboard_upload1](https://github.com/user-attachments/assets/71dcc8c8-a1da-4a39-83bb-7afb8915ab06)

# Report Snapshot "Vehicle Type Page"
- Top 5 Vehicle Types by Ride Distance
 
![Dashboard_upload2](https://github.com/user-attachments/assets/9c392610-840f-4362-96b9-b0660753ae61)

# Report Snapshot "Revenue Page"
- Revenue by Payment Method
- Top 5 Customers by Total Booking Value
- Ride Distance Distribution Per Day
 
![Dashboard_upload3](https://github.com/user-attachments/assets/69b75e1b-4b7d-4eac-9d84-4333315b1f2d)

# Report Snapshot "Cacellation Page"
- Cancelled Rides Reasons (Customer)
- cancelled Rides Reasons(Drivers)
 
![Dashboard_upload4](https://github.com/user-attachments/assets/cd7a65db-2564-4dd9-8d48-9815799e398b)

# Report Snapshot "Ratings Page"
-  Driver Ratings
- Customer Ratings
 
![Dashboard_upload5](https://github.com/user-attachments/assets/306c792f-e0ad-4995-a49b-7423766abfa6)

# Insights

A Five pages report was created on Power BI Desktop & it was then published to Power BI Service.

Following inferences can be drawn from the dashboard;

### [1] Total Number of Bookings = 40539

   Number of Success Bookings(July-2024) = 25207 (62.19%)

   Number of canceled Bookings(July-2024) = 11291 (27.85%)

   The Cacellation Rate(July-2024) = 27.85%
           
### [2] Average Ratings by customers

    a) Prime Sedan - 3.99/5
    b) Prime SUV - 3.99/5
    c) Prime Plus - 4.00/5
    d) Mini - 4.01/5
    e) Auto - 4.00/5
    f) Bike - 3.98/5
    g) E-Bike - 3.99/5

### [3] Average Ratings by Drivers

    a) Prime Sedan - 4.00/5
    b) Prime SUV - 4.01/5
    c) Prime Plus - 4.01/5
    d) Mini - 3.99/5
    e) Auto - 3.99/5
    f) Bike - 3.98/5
    g) E-Bike - 4.02/5 

while calculating average rating, null values have been ignored as they were not relevant for some customers. 
  
These ratings will change if different visual filters will be applied.  
### [4] Payment Method for Booking Value
  
      a) Booking Value By Cash - 7.54M
      b) Booking Value By UPI - 5.58M
      c) Booking Value By Credit Card - 49.57K
      d) Booking Value By Debit Card - 14.13K

Booking Value will change if different visual filters will be applied.

### [5] Total Distance Travelled by each Vehicle in KM
 
        1) Prime Sedan - 91K
        2) Prime SUV - 90K
        3) Prime Plus - 86K
        4) Mini - 87K
        5) Auto - 36K
        6) Bike - 93K
        7) E-Bike - 93K

### [6] Customer Behavior
- Majority of customers prefer Ola Prime Sedan (analyzing Success Bookings Count).
- High repeat customer rate, indicating customer loyalty.
         
### Conclusion
The dashboard provides actionable insights for Ola to optimize its services, enhance customer satisfaction, and increase revenue. By focusing on peak hours and popular ride types, Ola can strategize better resource allocation and marketing efforts.
### Next Steps
- Implement targeted promotions during peak hours.

- Improve services in high-demand locations.

- Analyze customer feedback to enhance the overall ride experience.
