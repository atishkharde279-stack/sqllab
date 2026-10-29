create table class(
name varchar (200),
marks  int);

insert into class values ("a",78),("b",79),("c",60),("d",79),("e",79);
select * from class;

select name,marks,rank() over(order by marks desc) from class;

select name,marks,dense_rank() over(order by marks desc) from class;

select name,marks,rank() over(order by marks desc) as ranks,
sum(marks) over(order by marks desc) as sums,
dense_rank() over(order by marks desc) as denserank,
row_number() over(order by marks desc) as roww from class;

use bank;

select customerid,loanammount,rank() over(order by loanammount desc) from loans;

select customerid,loanammount,dense_rank() over(order by loanammount desc)as denserank from loans;

select customerid,loanammount,loanid,row_number() over(order by loanammount desc) as rownumber from loans;

select customerid,loanammount,loanid,row_number() over(partition by customerid order by loanammount desc) as rownum from loans;

insert into loans (loanid,loanammount,customerid) values (307,300000,101);

select customerid,loanammount,sum(loanammount) over( order by loanammount desc)as runningtotal from loans;

select customerid,loanammount,startdate,lag(loanammount) over(order by loanammount desc) as previousloanammount from loans;

select customerid,loanammount,startdate,lead(loanammount) over(order by loanammount desc) as previousloanammount,loanammount- lead(loanammount) over(order by loanammount desc) from loans;
