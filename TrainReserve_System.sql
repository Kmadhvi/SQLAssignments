create Database TrainReserve_DB
use TrainReserve_DB

CREATE TABLE Trains (
    train_id INT NOT NULL,
    train_name VARCHAR(100) NOT NULL,
    source VARCHAR(50) NOT NULL,
    destination VARCHAR(50) NOT NULL,
    departure_time TIME NOT NULL,
    arrival_time TIME NOT NULL,
    distance_km INT NOT NULL CHECK (distance_km > 0)
);
ALTER TABLE Trains
ADD CONSTRAINT PK_Trains PRIMARY KEY (train_id);

CREATE TABLE Passengers (
    passenger_id INT,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 0),
    gender CHAR(1) CHECK (gender IN ('M','F')),
    city VARCHAR(50)
);

alter table Passengers
alter column passenger_id int not null

ALTER TABLE Passengers
ADD CONSTRAINT PK_Passengers PRIMARY KEY (passenger_id);

CREATE TABLE Reservations (
    res_id INT primary key,
    passenger_id INT,
    train_id INT,
    travel_date DATE NOT NULL,
    class VARCHAR(20) CHECK (class IN ('Sleeper','AC1','AC2','AC3')),
    fare DECIMAL(10,2) CHECK (fare >= 0),
    status VARCHAR(20) CHECK (status IN ('Confirmed','Waiting','Cancelled'))
);

select name,create_date, modify_date 
from sys.tables

INSERT INTO Trains VALUES
(101, 'Shatabdi Exp', 'Delhi', 'Bhopal', '06:00', '14:00', 700),
(102, 'Rajdhani Exp', 'Delhi', 'Mumbai', '16:00', '08:00', 1400),
(103, 'Duronto Exp', 'Mumbai', 'Chennai', '20:00', '10:00', 1300),
(104, 'Garib Rath', 'Kolkata', 'Delhi', '12:00', '06:00', 1500),
(105, 'Chennai Exp', 'Chennai', 'Delhi', '08:00', '22:00', 2200),
(106, 'Howrah Exp', 'Howrah', 'Mumbai', '10:00', '20:00', 1960),
(107, 'Nizamuddin Exp', 'Delhi', 'Hyderabad', '15:00', '05:00', 1675),
(108, 'Goa Exp', 'Mumbai', 'Goa', '07:00', '15:00', 589),
(109, 'Kashi Exp', 'Varanasi', 'Delhi', '05:30', '13:30', 820),
(110, 'Jammu Tawi Exp', 'Delhi', 'Jammu', '18:00', '07:00', 670),
(111, 'Karnataka Exp', 'Bangalore', 'Delhi', '21:00', '14:00', 2360),
(112, 'Kerala Exp', 'Trivandrum', 'Delhi', '11:00', '22:00', 3045),
(113, 'Punjab Mail', 'Mumbai', 'Firozpur', '19:00', '09:00', 1925),
(114, 'Tamil Nadu Exp', 'Chennai', 'Delhi', '06:30', '20:30', 2180),
(115, 'Andhra Exp', 'Hyderabad', 'Delhi', '06:00', '19:00', 1700),
(116, 'Odisha Sampark', 'Bhubaneswar', 'Delhi', '14:00', '08:00', 1725),
(117, 'Maharashtra Exp', 'Mumbai', 'Nagpur', '09:00', '18:00', 840),
(118, 'Saurashtra Exp', 'Rajkot', 'Mumbai', '06:00', '14:00', 730),
(119, 'Utkal Exp', 'Puri', 'Delhi', '20:00', '12:00', 1850),
(120, 'Konark Exp', 'Mumbai', 'Bhubaneswar', '22:00', '14:00', 1950),
(121, 'Kaveri Exp', 'Mysore', 'Chennai', '23:00', '07:00', 500),
(122, 'Malwa Exp', 'Indore', 'Delhi', '21:00', '08:00', 850),
(123, 'Netravati Exp', 'Mumbai', 'Mangalore', '11:00', '20:00', 720),
(124, 'Ganga Kaveri Exp', 'Chennai', 'Patna', '16:00', '08:00', 2000),
(125, 'Deccan Exp', 'Pune', 'Mumbai', '07:00', '12:00', 192),
(126, 'Shatabdi Kolkata', 'Kolkata', 'Patna', '05:00', '11:00', 535),
(127, 'Sealdah Exp', 'Sealdah', 'Delhi', '15:00', '09:00', 1460),
(128, 'Sundar Exp', 'Bangalore', 'Hyderabad', '18:00', '06:00', 650),
(129, 'Ajmer Exp', 'Ajmer', 'Delhi', '12:00', '21:00', 500);

INSERT INTO Passengers VALUES
(1, 'Ramesh', 45, 'M', 'Delhi'),
(2, 'Sita', 32, 'F', 'Mumbai'),
(3, 'Arjun', 28, 'M', 'Bhopal'),
(4, 'Priya', 19, 'F', 'Chennai'),
(5, 'Anil', 52, 'M', 'Kolkata'),
(6, 'Neha', 27, 'F', 'Delhi'),
(7, 'Vikram', 34, 'M', 'Mumbai'),
(8, 'Sunita', 40, 'F', 'Kolkata'),
(9, 'Rajesh', 50, 'M', 'Chennai'),
(10, 'Meena', 22, 'F', 'Bangalore'),
(11, 'Arvind', 29, 'M', 'Hyderabad'),
(12, 'Kiran', 31, 'M', 'Pune'),
(13, 'Lakshmi', 36, 'F', 'Delhi'),
(14, 'Deepak', 48, 'M', 'Patna'),
(15, 'Swati', 25, 'F', 'Jaipur'),
(16, 'Harish', 55, 'M', 'Varanasi'),
(17, 'Rohit', 19, 'M', 'Lucknow'),
(18, 'Sneha', 23, 'F', 'Ahmedabad'),
(19, 'Manoj', 60, 'M', 'Nagpur'),
(20, 'Kavita', 33, 'F', 'Bhopal'),
(21, 'Ajay', 42, 'M', 'Indore'),
(22, 'Ritu', 28, 'F', 'Mysore'),
(23, 'Pankaj', 37, 'M', 'Goa'),
(24, 'Divya', 30, 'F', 'Surat'),
(25, 'Suresh', 44, 'M', 'Ranchi'),
(26, 'Pooja', 26, 'F', 'Bhubaneswar'),
(27, 'Nitin', 32, 'M', 'Kanpur'),
(28, 'Shalini', 39, 'F', 'Chandigarh'),
(29, 'Gaurav', 21, 'M', 'Shimla'),
(30, 'Anita', 47, 'F', 'Trivandrum');

INSERT INTO Reservations VALUES
(201, 1, 101, '2025-09-01', 'Sleeper', 500, 'Confirmed'),
(202, 2, 102, '2025-09-05', 'AC2', 1800, 'Confirmed'),
(203, 3, 101, '2025-09-01', 'Sleeper', 500, 'Waiting'),
(204, 4, 103, '2025-09-07', 'AC3', 1200, 'Confirmed'),
(205, 5, 104, '2025-09-10', 'Sleeper', 600, 'Cancelled'),
(206, 6, 105, '2025-09-12', 'AC1', 3500, 'Confirmed'),
(207, 7, 106, '2025-09-13', 'AC2', 2200, 'Waiting'),
(208, 8, 107, '2025-09-14', 'Sleeper', 950, 'Confirmed'),
(209, 9, 108, '2025-09-15', 'AC3', 1200, 'Cancelled'),
(210, 10, 109, '2025-09-16', 'AC2', 1400, 'Confirmed'),
(211, 11, 110, '2025-09-17', 'Sleeper', 600, 'Confirmed'),
(212, 12, 111, '2025-09-18', 'AC1', 3800, 'Confirmed'),
(213, 13, 112, '2025-09-19', 'AC3', 2800, 'Waiting'),
(214, 14, 113, '2025-09-20', 'AC2', 2100, 'Confirmed'),
(215, 15, 114, '2025-09-21', 'Sleeper', 950, 'Confirmed'),
(216, 16, 115, '2025-09-22', 'AC2', 1650, 'Cancelled'),
(217, 17, 116, '2025-09-23', 'Sleeper', 800, 'Confirmed'),
(218, 18, 117, '2025-09-24', 'AC3', 1200, 'Confirmed'),
(219, 19, 118, '2025-09-25', 'AC1', 2500, 'Confirmed'),
(220, 20, 119, '2025-09-26', 'Sleeper', 1100, 'Waiting'),
(221, 21, 120, '2025-09-27', 'AC2', 1900, 'Confirmed'),
(222, 22, 121, '2025-09-28', 'AC3', 750, 'Confirmed'),
(223, 23, 122, '2025-09-29', 'Sleeper', 670, 'Cancelled'),
(224, 24, 123, '2025-09-30', 'AC2', 1100, 'Confirmed'),
(225, 25, 124, '2025-10-01', 'AC1', 3100, 'Confirmed'),
(226, 26, 125, '2025-10-02', 'Sleeper', 250, 'Waiting'),
(227, 27, 126, '2025-10-03', 'AC3', 900, 'Confirmed'),
(228, 28, 127, '2025-10-04', 'AC2', 1750, 'Confirmed'),
(229, 29, 128, '2025-10-05', 'Sleeper', 500, 'Confirmed'),
(230, 30, 129, '2025-10-06', 'AC2', 800, 'Cancelled');


--List all trains running from Delhi as source station.
Select * from Trains where source = 'Delhi'


--Find all passengers who are above 40 years of age.
Select * from Passengers where age > 40

--Get the total number of reservations made.
Select COUNT(*) as TotalReservation from Reservations

--Count how many reservations are in 'Confirmed' status.
Select COUNT(*) as TotalConfirmed from Reservations where status = 'Confirmed' 

--Show the average fare paid for each train.
Select train_id ,Avg(fare) as AvgrageFare from Reservations
Group by train_id

--List reservations ordered by fare in descending order.
Select * from Reservations 
Order by fare DESC

--Find passengers who booked AC classes (AC2, AC3).
Select passenger_id from Reservations where class IN ('AC2' ,'AC3')


--Get total revenue collected per train (only Confirmed reservations).
Select SUM(fare) as TotalRevenue from Reservations where status = 'Confirmed'


--Find the train with the maximum distance_km.
Select MAX(distance_km) from Trains

--Show number of male and female passengers.
select Count(*) as Gender from Passengers
group by gender

--Get the passenger names who have booked tickets in Sleeper class.
Select P.name from Passengers P
join Reservations R 
on P.passenger_id = R.passenger_id
where class= 'Sleeper'

--Find total number of reservations made from each city (JOIN with Passengers).
Select COUNT(*) as TotalReservation,P.city from Reservations R
join Passengers P
on R.passenger_id = P.passenger_id
Group by city

--Show train name and total passengers booked for it, ordered by passenger count descending.
Select T.train_name,COUNT(R.res_id) as PassengersbyTrain  from Trains T
join Reservations R
on T.train_id = R.train_id
Group by T.train_name
order by PassengersbyTrain DESC

--Find the average age of passengers who booked 'Confirmed' tickets.
Select Avg(P.age) As AverageAge
from Passengers P
join Reservations R
on P.passenger_id = R.passenger_id
where status='Confirmed'

--Display travel_date and number of reservations made on that date.
Select  travel_date ,COUNT(res_id) as NumberofReservations 
from Reservations
group by travel_date
order by travel_date

--Show all reservations where fare is greater than 1000.
Select * from Reservations where fare > 1000

--List all passengers who live in Delhi or Mumbai.
Select * from Passengers where city IN ('Delhi','Mumbai')

--Show all trains whose distance is more than 1200 km.
Select * from Trains where distance_km > 1200

--Find reservations which are not "Cancelled".
select * from Reservations where status <> 'Cancelled'

--Show the details of trains that have "Exp" in their name.
Select * from Trains where train_name LIKE '%Exp%'

--List all passengers ordered by their age in descending order.
select * from Passengers
order by age DESC

--Display reservations sorted by travel_date (earliest first).
Select * from Reservations
order by travel_date ASC

--Find all trains ordered by distance (longest route first).
Select * from Trains
order by distance_km DESC

--Show passengers ordered by name alphabetically.
Select * from Passengers
order by name ASC 

--List reservations ordered by class and then by fare.
Select * from Reservations
order by class ASC ,fare ASC


--Count how many passengers are from each city.
Select COUNT(*) as TotalReservation,P.city from Reservations R
join Passengers P
on R.passenger_id = P.passenger_id
Group by city

--Find the total fare collected from all Confirmed reservations.

Select Sum(R.fare) As TotalFare
from Reservations R
join Passengers P
on R.passenger_id = R.passenger_id
where status='Confirmed'

--Show the minimum, maximum, and average age of passengers.
Select AVG(P.Age) as AverageAge,MIN(P.Age) as Minimumage ,MAX(P.Age) as MaximumAge
from Passengers P
join Reservations R
on P.passenger_id = R.passenger_id

--Find the highest fare paid in Sleeper class.
Select MAX(fare) as HighestFare 
from Reservations 
where class = 'Sleeper'

--Get the average fare per travel_date.
Select travel_date ,AVG(fare) as AverageFare from Reservations
group by travel_date

--Show each class and the total number of reservations in it.
select class, Count(res_id) as TotalNumofReservations from Reservations
group by class

--Find trains that have more than 1 reservation.
select T.train_name ,Count(*) as TotalReservation from Trains T
join Reservations R
on T.train_id = R.train_id
group by train_name
having COUNT(*) > 1

--List cities where more than 1 passenger lives.
select city, Count(*) as Totalpassengers from Passengers P
join Reservations R
on P.passenger_id = R.passenger_id
group by city
having COUNT(*) > 1

--Show gender-wise average age of passengers.
select P.gender, AVG(P.age) as AveragePassenger from Passengers P
join Reservations R
on P.passenger_id = R.passenger_id
group by P.gender


select * from Reservations
select * from Passengers
select * from Trains
--Find passengers who booked more than 1 ticket.
select  P.name ,Count(*) as TotalPassengers from Reservations R
join Passengers P
on P.passenger_id = R.passenger_id
group by P.name 
having COUNT(*) > 1


--Show passenger name, train name, and fare for each reservation.
select R.res_id,P.name, T.train_name , R.fare from Reservations R
join Passengers P
on R.passenger_id = P.passenger_id
join Trains T
on R.train_id = T.train_id

--List all passengers and the train name they booked (if any).
select P.name, T.train_name from Reservations R
join Passengers P
on R.passenger_id = P.passenger_id
join Trains T
on R.train_id = T.train_id

--Show all trains and the number of passengers booked in each.
select T.train_name, COUNT(P.passenger_id) as TotalPassagners from Reservations R
join Trains T
on R.train_id = T.train_id
join Passengers P 
on R.passenger_id = P.passenger_id
group by T.train_name

--Find all passengers who booked Rajdhani Exp.
select P.name from Passengers P 
join Reservations R
on P.passenger_id = R.passenger_id
join Trains T 
on T.train_id = R.train_id
where T.train_name = 'Rajdhani Exp'

--List passenger names with their travel_date and status.
select p.name,R.travel_date,R.status from Passengers P 
join Reservations R
on P.passenger_id = R.passenger_id

--Find the top 2 highest fare reservations.
Select Top 2 fare 
from Reservations 
order by fare DESC

--Find the train with the lowest average fare.
SELECT t.train_id, t.train_name, AVG(r.fare) AS avg_fare
FROM Trains t
JOIN Reservations r ON t.train_id = r.train_id
GROUP BY t.train_id, t.train_name
HAVING AVG(r.fare) = (
    SELECT MIN(avg_fare)
    FROM (
        SELECT AVG(fare) AS avg_fare
        FROM Reservations
        GROUP BY train_id
    ) AS sub
)

--Show the train(s) where total distance travelled by all passengers > 1000 km.
SELECT t.train_id, t.train_name, 
       SUM(t.distance_km) AS total_distance
FROM Trains t
JOIN Reservations r ON t.train_id = r.train_id
GROUP BY t.train_id, t.train_name
HAVING SUM(t.distance_km) > 1000


--Find passengers whose reservation status is "Waiting".
SELECT p.passenger_id, p.name, r.status
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
WHERE r.status = 'Waiting'


--Show the passenger(s) who paid the maximum fare overall.
SELECT p.passenger_id, p.name, r.fare
FROM Passengers p
JOIN Reservations r ON p.passenger_id = r.passenger_id
WHERE r.fare = (
    SELECT MAX(fare)
    FROM Reservations
)

--Show all passengers whose age is between 20 and 40.
SELECT *
FROM Passengers
WHERE age BETWEEN 20 AND 40

--Find trains that start from Kolkata or Chennai.
SELECT *
FROM Trains
WHERE source IN ('Kolkata', 'Chennai')

--Show all reservations made after 2025-09-05.
SELECT *
FROM Reservations
WHERE travel_date > '2025-09-05'

--Display passengers whose name starts with 'A'.
SELECT *
FROM Passengers
WHERE name LIKE 'A%'

--List passengers whose city is NOT Delhi.
SELECT *
FROM Passengers
WHERE city <> 'Delhi'

--Show the 3 youngest passengers.
SELECT TOP 3 *
FROM Passengers
ORDER BY age ASC

--Show the 2 longest-distance trains.
SELECT TOP 2 *
FROM Trains
ORDER BY distance_km DESC

--Display the 5 most expensive reservations (highest fare).
SELECT TOP 5 *
FROM Reservations
ORDER BY fare DESC

--List trains in alphabetical order of train_name.
SELECT *
FROM Trains
ORDER BY train_name ASC

--Show passengers sorted by age (youngest first).
SELECT *
FROM Passengers
ORDER BY age ASC

--Find the average fare of all reservations.
SELECT AVG(fare) AS average_fare
FROM Reservations

--Count the total number of male passengers.
SELECT COUNT(*) AS total_male_passengers
FROM Passengers
WHERE gender = 'M'

--Show the maximum distance among all trains.
SELECT MAX(distance_km) AS max_distance
FROM Trains

--Find the total number of Sleeper class reservations.
SELECT COUNT(*) AS total_sleeper_reservations
FROM Reservations
WHERE class = 'Sleeper'

--Find the total fare paid by passengers from Mumbai.
SELECT SUM(r.fare) AS total_fare_from_mumbai
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
WHERE p.city = 'Mumbai'


--Count the number of reservations per status (Confirmed/Waiting/Cancelled).
SELECT status, COUNT(*) AS total_reservations
FROM Reservations
GROUP BY status

--Find the total number of passengers per gender.
SELECT gender, COUNT(*) AS total_passengers
FROM Passengers
GROUP BY gender

--Show the average fare for each class.
SELECT class, AVG(fare) AS avg_fare
FROM Reservations
GROUP BY class

--Display the number of trains starting from each source city.
SELECT source, COUNT(*) AS total_trains
FROM Trains
GROUP BY source

--Show total reservations grouped by travel_date.
SELECT travel_date, COUNT(*) AS total_reservations
FROM Reservations
GROUP BY travel_date

--Show passenger name, city, and train_name they booked.
SELECT p.name, p.city, t.train_name
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
JOIN Trains t ON r.train_id = t.train_id

--List all reservations with passenger name and status.
SELECT p.name, r.status
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id

--Show train_name and number of confirmed passengers on it.
SELECT t.train_name, COUNT(*) AS confirmed_passengers
FROM Reservations r
JOIN Trains t ON r.train_id = t.train_id
WHERE r.status = 'Confirmed'
GROUP BY t.train_name

--Display all passengers with train_name (if booked, else show NULL).
SELECT p.name, t.train_name
FROM Passengers p
LEFT JOIN Reservations r ON p.passenger_id = r.passenger_id
LEFT JOIN Trains t ON r.train_id = t.train_id

--Find which passengers booked Garib Rath train.
SELECT p.name
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
JOIN Trains t ON r.train_id = t.train_id
WHERE t.train_name = 'Garib Rath'

--Show train_id and total fare collected, but only where fare > 1000.
SELECT train_id, SUM(fare) AS total_fare
FROM Reservations
WHERE fare > 1000
GROUP BY train_id

--List source cities that have more than 1 train.
SELECT source, COUNT(*) AS total_trains
FROM Trains
GROUP BY source
HAVING COUNT(*) > 1

--Find passengers grouped by city where count > 1.
SELECT city, COUNT(*) AS total_passengers
FROM Passengers
GROUP BY city
HAVING COUNT(*) > 1

--Show classes that earned more than 2000 fare in total.
SELECT class, SUM(fare) AS total_fare
FROM Reservations
GROUP BY class
HAVING SUM(fare) > 2000

--List trains that have at least 2 passengers booked.
SELECT train_id, COUNT(*) AS total_passengers
FROM Reservations
GROUP BY train_id
HAVING COUNT(*) >= 2

--Find the passenger(s) with the highest age.
SELECT *
FROM Passengers
WHERE age = (SELECT MAX(age) FROM Passengers)

--Show the train(s) with the shortest distance.
SELECT *
FROM Trains
WHERE distance_km = (SELECT MIN(distance_km) FROM Trains)

--Find the reservation(s) with the lowest fare.
SELECT *
FROM Reservations
WHERE fare = (SELECT MIN(fare) FROM Reservations)

--List passengers who paid above the average fare.
SELECT p.name, r.fare
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
WHERE r.fare > (SELECT AVG(fare) FROM Reservations)

--Find trains whose distance is above the average train distance.
SELECT *
FROM Trains
WHERE distance_km > (SELECT AVG(distance_km) FROM Trains)

--Show all reservations in September 2025.
SELECT *
FROM Reservations
WHERE travel_date BETWEEN '2025-09-01' AND '2025-09-30'

--Find the earliest travel_date booked.
SELECT MIN(travel_date) AS earliest_date
FROM Reservations

--Find the latest travel_date booked.
SELECT MAX(travel_date) AS latest_date
FROM Reservations

--Count how many reservations are made per day.
SELECT travel_date, COUNT(*) AS total_reservations
FROM Reservations
GROUP BY travel_date

--List passengers who booked tickets on the same date.
SELECT travel_date, COUNT(*) AS total_bookings
FROM Reservations
GROUP BY travel_date
HAVING COUNT(*) > 1

--Show passenger name, train_name, and distance travelled.
SELECT p.name, t.train_name, t.distance_km
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
JOIN Trains t ON r.train_id = t.train_id

--Find the city that contributed the highest number of passengers.
SELECT TOP 1 city, COUNT(*) AS total_passengers
FROM Passengers
GROUP BY city
ORDER BY COUNT(*) DESC

--Display each train and its average fare (confirmed only).
SELECT t.train_name, AVG(r.fare) AS avg_fare
FROM Reservations r
JOIN Trains t ON r.train_id = t.train_id
WHERE r.status = 'Confirmed'
GROUP BY t.train_name

--Show passengers who booked tickets in more than one class.
SELECT passenger_id
FROM Reservations
GROUP BY passenger_id
HAVING COUNT(DISTINCT class) > 1

--Find train_name with maximum number of reservations.
SELECT TOP 1 t.train_name, COUNT(*) AS total_reservations
FROM Reservations r
JOIN Trains t ON r.train_id = t.train_id
GROUP BY t.train_name
ORDER BY COUNT(*) DESC







