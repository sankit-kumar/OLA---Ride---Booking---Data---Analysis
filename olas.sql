use ola;
#1. retrieve all successful bookings:
SELECT * FROM Booking WHERE Booking_Status = 'Success';
#2. Find the average ride distance for each vehicle type:
SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM Booking GROUP BY Vehicle_Type;
#3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM Booking WHERE Booking_Status = 'cancelled by Customer';
#4. List the top 5 customers who booked the highest number of rides:
SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM Booking GROUP BY
Customer_ID ORDER BY total_rides DESC LIMIT 5;
#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*) FROM Booking WHERE cancelled_Rides_by_Driver = 'Personal & Car
related issue';
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM
Booking WHERE Vehicle_Type = 'Prime Sedan';
#7. Retrieve all rides where payment was made using UPI:
SELECT * FROM Booking WHERE Payment_Method = 'UPI';
#8. Find the average customer rating per vehicle type:
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM Booking
GROUP BY Vehicle_Type;
#9. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) as total_successful_value FROM Booking WHERE
Booking_Status = 'Success';
#10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason FROM Booking WHERE Incomplete_Rides =
'Yes';
