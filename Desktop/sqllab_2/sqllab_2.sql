use bank;

select * from accounts;

alter table accounts add constraint check(balance>1000);

drop table accountbranches;

select * from customer;

alter table customer add constraint pk primary key(customerid);

alter table customer modify firstname varchar(200) not null;

alter table customer add constraint u_k unique(email);

alter table accounts add column cus_id varchar(200);

alter table accounts modify column cus_id int;

alter table accounts add constraint fk foreign key(cus_id) references customer(customerid);

select * from accounts;