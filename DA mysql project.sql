# MYSQL PROJECT : SECOND HAND CAR DEALER

#1 Read cars data 
#2 Total cars : to get a count of total records 
#3 The manager asked the employees that how many cars will be available in 2023?
#4 The manager asked the employees that how many cars are available in 2020, 2021, 2022
#5 Client asked me to print the total of all the cars by year . I don't want to see all the the details.
#6 Client asked to car dealer agent that how many diesel cars will be there in 2020?
#7 Client asked to car dealer agent that how many petrol cars are available in 2020?
#8 The manager told the employees to give a print of all the fuel cars (petrol , diesel , cng) came by all years.
#9 Manager said there were more than 100 cars in a given year. Which year had more than 100 cars?
#10 The manager asked employees to give count of all the cars between a2015 and 2023. We need a complete list
#11 The manager asked employees to give the details of all the cars between 2015 and 2023. We need complete list


											#PROJECT BELOW

-- read car data --
select * from car_dekho;

-- TOTAL CARS: to get count of total records --
select count(*) from car_dekho; #7927

-- The manager asked the employees that how many cars will be available in 2023 --
select count(*) from car_dekho where year = 2023; #6

-- The manager asked the employees that how many cars will be available in 2020,2021,2022? --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
						#OR
select count(*) from car_dekho where year in(2020,2021,2022) group by year;

-- Client asked me to print the total of all the cars by year. i dont want to see all the details --
select year,count(*) from car_dekho group by year;

-- Client asked car dealer agent that how many diesel cars will be availabe in 2020? -- 
select count(*) from car_dekho where fuel = 'diesel' and year = 2020; #20

-- Client asked car dealer agent that how many petrol cars will be available in 2020? --
select count(*) from car_dekho where fuel = 'petrol' and year = 2020; #51

-- The manager told the employee to give print to all the fuel cars(petrol, diesel, cng) came by all year --
select year , count(*) from car_dekho where fuel = 'petrol' group by year;
select year , count(*) from car_dekho where fuel = 'diesel' group by year;
select year , count(*) from car_dekho where fuel = 'cng' group by year;

-- Manager said there were more than 100 cars in the given year , which year had less than 100 cars? --
select year , count(*) from car_dekho group by year having count(*)>100;

-- The manager asked employees to give count of all the cars between 2015 and 2023. We need complete list -- 
select count(*) from car_dekho where year between 2015 and 2023; #4124

-- The manager asked employees to give all the car details between 2015 and 2023. We need complete list --
select * from car_dekho where year between 2015 and 2023;
