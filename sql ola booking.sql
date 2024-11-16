Create database OLA;
Use OLA;
select * from ola.bookings;

#1 :
create view Successfull_Bookings as
select * from bookings 
where Booking_Status = 'Success';

#2 :
select * from Successfull_Bookings;
create view Ride_Distance_for_each_vehicle as
select Vehicle_Type, avg(Ride_Distance)
as average_distance from bookings
group by Vehicle_Type;
select * from Ride_Distance_for_each_vehicle;

#3 :

select * from bookings ;
create view Cancel_By_Customer as
select count(*) from bookings 
where Booking_Status = 'Canceled by Customer';

#4 : 

select * from bookings ;
create view Top5_customer as
select Customer_ID , count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc limit 5;

#5 : 

create view cancel_by_rider_due_to_Personal_Car_related_issue as
select count(*) from bookings 
where Canceled_Rides_by_Driver = 'Personal & Car related issue' ;

#6 : 

select * from bookings;
create view Max_Min_Driver_Rating as
select max(Driver_Ratings) as max_rating ,
min(Driver_Ratings) as min_rating
from bookings where Vehicle_Type = 'Prime Sedan';

#7 : 

select * from bookings;
create view UPI_Payments as
select * from bookings 
where Payment_Method = 'UPI';

#8 : 
create view avg_customer_rating as
select * from bookings;
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
from bookings
group by Vehicle_Type;

#9 : 

select * from bookings;
create view total_successfull_value as
select sum(Booking_Value) as total_successfull_value
from bookings
where Booking_Status = 'Success';

#10 : 

create view Incomplete_Ride_Reason as
select * from bookings;
select Booking_ID, Incomplete_Rides_Reason 
from bookings 
where Incomplete_Rides = 'Yes';

       #### SQL Question And Answers ####
       
       
#1. Retrieve all successful bookings:
    select * from Successfull_Bookings;
    
    
#2. Find the average ride distance for each vehicle type:
    select * from Ride_Distance_for_each_vehicle;
    
    
#3. Get the total number of cancelled rides by customers:
    select * from Cancel_By_Customer;
    
    
#4. List the top 5 customers who booked the highest number of rides:
    select * from Top5_customer;
    
    
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
    select * from cancel_by_rider_due_to_Personal_Car_related_issue;
    
    
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
    select * from Max_Min_Driver_Rating;
    
    
#7. Retrieve all rides where payment was made using UPI:
    select * from UPI_Payments;
    
    
#8. Find the average customer rating per vehicle type:
    select * from avg_customer_rating;
    
    
#9. Calculate the total booking value of rides completed successfully:
    select * from total_successfull_value;
    
    
#10. List all incomplete rides along with the reason:
    select * from Incomplete_Ride_Reason;
    
    