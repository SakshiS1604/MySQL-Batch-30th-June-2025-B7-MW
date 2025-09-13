
-- 1.company wants to store data 
create table employee (
empid int primary key,
name varchar(100),
department varchar(50),
salary decimal (10,2)
);

-- update salary 
update Salaries set basic = 100000 where salary_id = 5 ;

-- delete employees 
delete from employees where job_title = 'hr executive';

-- select  employee
select * from salaries where job_title ='manager';

-- sort by salaries
select * from salaries order by basic desc limit 3;

SELECT pay_mode, SUM(basic) AS Total_Salary
FROM salaries
GROUP BY pay_mode;

-- retrieve all employes salary range from 5000 to 8000
select * from salaries where basic > 10000 and basic > 8000 ;

select * from employees where  first_name like 'A%';

-- create table students
create table students(
roll_no int unique,
name varchar(100),
marks int check (marks >= 0)
);

-- 11. Create a table Orders where OrderID is the Primary Key and CustomerID is a Foreign Key referencing the Customers tab
create table orders(
order_id  int primary key,
order_date  date,
customer_id int,
foreign key (customer_id) references customer(customer_id)
);

-- 21. Use a built-in function to display the current date and time
select now() as currentdatetime;
select current_timestamp as currentdatetime;

select emp_id, first_name CHAR_LENGTH(first_name) as name_length from employees ;

select count(*) as totalemployees from employees;
DELIMITER //

CREATE FUNCTION GetBonus(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN salary * 0.10;
END //

DELIMITER ;
SELECT EmpID, Name, GetBonus(Salary) AS Bonus
FROM Employees;


 



