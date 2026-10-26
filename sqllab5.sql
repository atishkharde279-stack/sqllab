use bank;

-- Retrieve only the following details from the Accounts table: AccountID, AccountType, and Balance.

select accountid,accounttype,balance from accounts;

-- Retrieve Customers with Savings Accounts

select * from accounts
where accounttype="Savings";

-- Retrieve Accounts with Balance Greater Than 25000

select * from accounts
where balance>25000;

-- Retrieve Transactions Between Specific Amounts 5000 -20000
select * from transaction
where account between 5000 and 20000;

-- Retrieve Records for Selected Customers 101,102,103,104
SELECT * FROM customer
WHERE CustomerID IN (101, 102, 103, 104);

-- This displays customers whose names start with the letter R.
 select * from customer where firstname like "r%";
 
-- 1. Retrieve all current account records
select * from accounts;

-- 2. Find accounts with balance less than 15000

select * from accounts
where balance<15000;

-- 3. Display transactions between 1000 and 10000

select * from transaction
where account between 1000 and 10000;
 
-- 4. Retrieve customer records for CustomerID 104 and 105

select * from customer
where customerid in (104,105);


-- 5. Display customers whose last name starts with S

select * from customer where lastname like "s%";
 
 
-- Display Customers in Alphabetical Order
select * from customer 
order by firstname asc;


-- Display Accounts with Highest Balance First

select * from accounts
order by balance desc;

-- retrieve Unique Account Types
select distinct(accounttype) from accounts;

-- Display Top 3 Highest Balance Accounts
select * from accounts
order by balance desc
limit 3;

-- Skip Initial Records While Viewing Transactions
select * from transaction
limit 4 offset 1;
 
-- 1. Display customers sorted by LastName
SELECT * FROM customer
ORDER BY LastName ASC;

-- 2. Retrieve top 5 transactions with highest amount
-- 3. Display unique transaction types
-- 4. Skip the first 3 transaction records and display the next 4 records
 
-- Find Customers Without Phone Numbers

select * from customer
where  phone is null ;

-- Find Customers Having Email Addresses
select * from customer
where email is not null;
 
-- 1. Find customers without email addresses
select * from customer where email is  null;

-- 2. Display all accounts where balance information is available

select * from accounts where balance is not null;
  
-- Search Customers Whose First Name Starts with “A”

 select * from customer where firstname like "a%";

-- Search Customers Whose Email Contains “gmail”

select * from customer where email like "%gmail%";
 
-- Search Customers Whose Last Name Ends with “kar”
select * from customer where lastname like "%kar";
 
-- 1. Display customers whose first name starts with R
 select * from customer where firstname like "r%";
 
-- 2. Find customers whose email contains yahoo
select * from customer where email like "%yahoo%";

-- 3. Display customers whose last name starts with P
select * from customer where lastname like "p%";

-- 4. Search customers whose phone number ends with 99
select * from customer where phone like '%99';
 
-- The finance team wants to review only Savings and Current account holders.
select * from accounts where accounttype in ('savings','current');

-- The audit department wants to investigate only Deposit and Withdrawal transactions.
select * from transaction where transactiontype in ('deposit','withdraw');

-- The customer relationship team wants to review records for a specific set of customers. 101,102,105
SELECT * FROM customer
WHERE CustomerID IN (101, 102,104);
 
-- 1. Display accounts belonging to Salary and Savings account types
select * from accounts 
where account_type in ('salary', 'savings');
-- 2. Retrieve transactions for Payment and Deposit categories
-- 3. Display customer records for CustomerID 103 and 104
-- 4. Retrieve selected account records using AccountID values
 
-- Display Customers in Ascending Order of Last Name
select * from customer
order by lastname asc;

-- Display Accounts with Highest Balance First
select * from accounts 
order by balance desc;

-- Display Transactions Sorted by Transaction Date
select * from transaction
order by transactiondate asc;
 
-- 1. Display customers sorted by FirstName
select * from customer order by firstname ASC;

-- 2. Display accounts sorted by AccountType
select * from accounts order by AccountType asc;

-- 3. Display transactions sorted by Amount in descending order
select * from transaction order by Account desc;

-- 4. Display customers sorted by DateOfBirth
select * from customer order by DateOfBirth asc;

 
-- Display Only Top 5 Highest Balance Accounts
select * from accounts order by balance desc limit 5;

-- Display First 3 Customer Records
select * from customer limit 3;

-- Skip Initial Transaction Records 3 While Viewing Data record 2
 select * from transaction limit 2 offset 3;
 
-- 1. Display top 3 transactions with highest amount
select * from transaction order by Account desc limit 3;

-- 2. Retrieve only 4 customer records
select * from customer limit 4;

-- 3. Skip first 2 account records and display next 3 records
select * from accounts limit 3 offset 2;

-- 4. Display top 5 latest transactions
select * from transaction order by TransactionDate desc limit 5;

 
 
 
-- Display Savings Account Customers Sorted by Balance
-- Categorize Accounts Using Balance
-- Balance >50000 then premium account
-- Balance >2500 then standar account

select accountid,balance,
case
when balance>50000 then 'pm'
when balance<25000 then 'sa'
end as type from accounts;
 
 
 select * from accounts;
 
-- · High Transaction
-- · Medium Transaction
-- · Low Transaction
-- based on transaction amount.
select TransactionID,Account,
case when Account>=10000 then "High Transaction"
when Account>=5000 then "Medium Transaction"
when Account>=0 then "Low Transaction"
End  as transactionsType
from transaction