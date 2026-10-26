use bank;
-- 1.Display customer Table
select * from customer;
-- 2. Display all customer FirstName in uppercase.
select firstname,upper(firstname) as newname from customer;
-- 3. Display all customer FirstName in lowercase.
select firstname,lower(firstname) as newname from customer;
-- 4. Find the total number of characters in each customer FirstName
select firstname,length(firstname) as lengthofname from customer;
-- 5. Display only the first three characters of customer FirstName .
select firstname,left(firstname,3) from customer;
-- 6. Combine customer's FirstName with LastName.
select concat(firstname," ",lastname) from customer;

select trim('    hello   ') as trimmer,length(trim('     hello    ')) as trimlength;

select firstname,right(firstname,3) from customer;

select firstname,mid(firstname,2,2) from customer;

select firstname,upper(firstname) as new_name, lower(firstname) as l_name, left(firstname,3) as leftname , right(firstname,3)as rightname from customer;


-- MATH FUNCTIONS

select round(168.7) as roundvalue;

select ceil(168.1) as cellvalue;

select floor(168.99) as floorvalue;

select abs(-2500) as absvalue;

select mod(25,3) modvalue;

-- 1. Display customer Table
select * from customer;

-- 2. Display the current system date
select current_date();

-- 3. Display the current system date and time.
select now();

-- 4. Display the Birth of year
select dateofbirth,year(dateofbirth) from customer;

-- 5. Display the Birth month
select dateofbirth,month(dateofbirth) from customer;

-- 6. Calculate the number of days since BirthDate
select dateofbirth,datediff(current_date,dateofbirth)from customer;

-- 7. Find the latest birth date.
select max(dateofbirth)from customer;

-- 8. Find the earliest birth date
select min(dateofbirth)from customer;

-- 1. Categorize customers as Adult or Young based on their birth year
select year(dateofbirth),
case when year(dateofbirth)>1998 then "young"
when year(dateofbirth)<1998 then "adult" end from customer;

-- 2. Display 'Not Available' if a phone number is NULL
 select ifnull(phone,"not available") from customer;
-- 3. Compare two customer names
SELECT  firstname, nullif(firstname,"priya") from customer;

-- 4. Calculate the total balance maintained across all customer accounts.
select sum(balance) from accounts;
-- 5. Calculate the average balance maintained across all customer accounts to understand the typical amount held by customers.
select avg(balance) from accounts;
-- 6. Identify the highest balance maintained in any customer account.
select max(balance) from accounts ;
-- 7. Identify the lowest balance maintained in any customer account
select min(balance) from accounts ;
-- 8. Determine the total number of customer accounts available in the system.
select count(accountid) from accounts;
-- 9. The bank wants to calculate the total account balance for each AccountType by grouping the records based on AccountType and identify which account type is attracting the highest total deposits from customers.
select accounttype,sum(balance) from accounts
group by accounttype;
-- 10. The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000.
select accounttype,sum(balance) from accounts
group by accounttype
having sum(balance)>25000;