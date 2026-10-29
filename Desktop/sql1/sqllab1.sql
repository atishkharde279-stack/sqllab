create database Bank;

use bank;

create table accounts(
accountid int,
accounttype varchar(20),
balance decimal(10,2));

select * from accounts;

create table transaction(
transactionid int,
transactiondate date,
account float,
transactiontype varchar(20));

select * from transaction;

create table branches(
branchid int,
branchname varchar(100),
branchaddress varchar(200),
branchphone varchar(15));

select * from branches;

create table AccountBranches(
assignmentdate date);

select * from AccountBranches;

create table Loans(
loanid int,
loanammount float,
interestrate float,
startdate date,
enddate date);

select * from Loans;

create table customer(
customerid int,
firstname varchar(50),
lastname varchar(50),
email varchar(100),
phone varchar(15));

select * from customer;

alter table customer add column dateofbirth varchar(20);

alter table customer modify dateofbirth date;

alter table accounts modify balance float;

alter table customer modify phone varchar(20);