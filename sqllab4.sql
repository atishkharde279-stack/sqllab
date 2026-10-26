-- 1. Show all Deposit transactions.
select * from t1
where transactiontype="deposit";

-- 2. Show TransactionID, CustomerName and Amount for transactions above 10000.
select transactionid,customername,amount from t1
where amount>1000;

-- 3. Show all transactions made in Pune.
select * from t1
where city="pune";

-- 4.  Show Deposits with an amount above 10000.
select * from t1
where transactiontype="deposit"
and amount>10000;

-- 5.  Show Withdrawals made in Cash.
select * from t1
where transactiontype="withdrawal"
and mode="cash";

-- 6. Show transactions from Mumbai or Delhi
select * from t1 where city regexp "pune|mumbai";

-- 7. Write the same query as Q6
select * from t1 where city regexp "pune|mumbai";

-- 8. Show transactions that were not made through UPI.
select * from t1
where mode
not in ('upi');

-- 9. Show transactions with an amount between 5000 and 10000.
select * from t1
where amount between 5000 and 10000;

-- 10. Show transactions from cities other than Pune, Mumbai and Delhi
select * from t1
where city
not in ('pune','mumbai','delhi');

-- 11.  Show transactions made in March 2026
select * from t1
where transactiondate>"2026-03-01"
and transactiondate<"2026-03-31";

-- 12. Show customers whose name starts with A.
select * from t1 where customername like "a%";

-- 13.  Show customers whose name ends with a.
select * from t1 where customername like "%a";

-- 14. Show customers whose second letter is a.
select * from t1 where customername like "_a%";

-- 15. Show customers whose name contains sh.
select * from t1 where customername regexp "sh";

-- 16.  Show customers whose name does not start with A.
select * from t1 where customername not like "a%";

-- 17.  Show transactions where Remarks is empty (NULL).
select * from t1 where remarks is null;

-- 18. Use REGEXP to show customers whose name starts with A or P.
select * from t1 where customername like "p%|a%";

-- 19. Use REGEXP to show customers whose name ends with a or i.
select * from t1 where customername like "%i|%a";

-- 20. Show Deposits or Transfers above 5000 that were made through UPI or NEFT.
select * from t1
where (transactiontype="deposit"
or transactiontype="neft"
or amount>=5000)
and (mode="upi" 
or mode="neft");

