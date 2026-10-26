use bank;



insert into customer values(101,"Rahul","Sharma","rahul.sharma@gmail.com","9999999999","1998-04-15");
insert into customer values(102,"Priya","Patil","priya@gmail.com","9988776655","2000-09-20");
insert into customer values(103,"Amit","Patel","amit.patel@gmail.com","9876500001","1995-06-18");
insert into customer values(104,"Sneha","Joshi","sneha.joshi@gmail.com","9876500002","1997-09-12");
insert into customer values(105,"Rohan","Kulkarni","rohan.k@gmail.com","9876500003","1993-11-25");

select * from customer;

insert into loans values(301,500000,8.50,"2025-01-15","2030-01-15",101);
insert into loans values(302,300000,9.25,"2025-02-10","2028-02-10",102),
						(303,750000,8.75,"2025-03-20","2032-03-20",103),
                        (304,250000,10.00,"2025-04-05","2029-04-05",104),
                        (305,1000000,7.95,"2025-05-12","2035-05-12",105);
                        
select * from loans;

alter table loans add column customerid varchar(200);

insert into branches values(1,"Mumbai Branch","Andheri, Mumbai","0221111111");
insert into branches values(2,"Pune Branch","Shivaji Nagar, Pune","0202222222");
insert into branches values(3,"Nashik Branch","College Road, Nashik","0253222222"),
                            (4,"Nagpur Branch","Sitabuldi, Nagpur","0712333333");
insert into branches values(5,"Navi Mumbai Branch","Vashi, Navi Mumbai","0224444444");

select * from branches;
alter table accounts add column branchid int;
alter table branches add constraint pk_b primary key(branchid);
alter table accounts add constraint fk_ac foreign key(branchid) references branches(branchid);

insert into accounts values(201,"Savings",25000,101,default);
insert into accounts values(202,"Current",40000,102,default),(203,"Savings",35000,103,default),
							(204,"Current",60000,104,default),(205,"Savings",45000,105,default);

select * from accounts;

insert into transaction values(301,"2025-05-10",5000,"Deposit",201);
insert into transaction values(302,"2025-05-11",2500,"Withdraw",202),(303,"2025-05-12",10000,"Deposit",203),
								(304,"2025-05-13",3000,"Withdraw",204),(305,"2025-05-14",7000,"Deposite",205);
                                
alter table transaction add column accountid varchar(200);    
                            
select * from transaction;

update customer set phone="8888888888" where customerid=101;

update customer set email="rahul_sharma@gmail.com" where customerid=101;

update accounts set balance=30000 where accountid=201;

select * from customer;

select * from accounts;

delete from transaction where transactionid=302;

delete from accounts where accountid=202;

select * from transaction;

select * from accounts;

select accountid,accounttype,balance from accounts;

select * from accounts 
where balance<15000;

select * from transaction 
where account>1000
and account<=10000;

select customerid,firstname,lastname,email from customer;

select* from loans
where interestrate >9
and loanammount>50000;

select *from branches
where branchaddress="shivajinagar";

select* from accounts
where balance>25000
and accounttype="savings";

select * from customer
where dateofbirth>"1998-01-01";

