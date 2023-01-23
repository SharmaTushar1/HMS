1. select count(*) from reports where status = 'admitted'

2. 
-- choose the ones that will end before required date
-- these and the rooms without any booking are the available rooms.
-- alternatively we can select the rooms with booking and do not in
WITH end_before_day_after_tomorrow AS (
	SELECT room_id, start_date, end_date 
	FROM room_booking
	WHERE end_date< current_date + INTERVAL '2 DAYS'
)

SELECT room_type, COUNT(id) as available_rooms
FROM rooms
WHERE id IN (SELECT room_id FROM 
				end_before_day_after_tomorrow) or id not in (SELECT room_id from room_booking)
				GROUP BY room_type;

3.

SELECT id, first_name, last_name from employees where id = (SELECT employee_id from doctors where id = (SELECT doctor_id from emergency_rooms where date_of_task = current_date
))
-- can also use join

4. 

SELECT id, first_name, last_name from employees where id = (SELECT employee_id from doctors where id = (SELECT doctor_id from emergency_rooms where date_of_task = current_date + interval '1 days'))

5. 
SELECT COUNT(*) FROM patient_register WHERE date_trunc('day', time_of_death)= joining_date;

6. 

7. -- create a table and count the

1 -> 2
2 -> 3


8.

9.
select * from patients where phone = '555-555-5555'
-- Similarly for insurance, hospital_number or name


10.

a. SELECT COUNT(*) FROM patient_register WHERE status = 'admitted' and DATE_PART('YEAR', joining_date)=2021; --or whatever year/week/day

b. SELECT COUNT(*) FROM patient_register WHERE time_of_death IS NOT NULL AND EXTRACT(year FROM time_of_death)=2021; -- OR WHATEVER YEAR/WEEK/DAY

c. -- WHERE LEAVING_DATE IS NOT NULL

d. 

e. 

f.-- COMMON IN ER TABLE AND PATIENT TABLE



