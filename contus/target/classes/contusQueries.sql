SET SQL_SAFE_UPDATES = 0; -- o allow update and delete query without primary key

select * from customers;
insert into customers set cust_name='addy';

commit;

create table coupon (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
coupon_code varchar(100),
numb_allowed int(10),
validTill date,
redeemed_numb int(10) default 0,
confirm_use varchar(10),
amount float(10),
percentage float(10),
date_time TIMESTAMP default CURRENT_TIMESTAMP
);

create table customers(
id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
cust_name varchar(100),
email varchar(100),
address varchar(100),
mobile varchar(100),
test_score varchar(100),
payment_method varchar(100),
additional_data1 varchar(100),
additional_data2 varchar(100),
date_time TIMESTAMP default CURRENT_TIMESTAMP,
order_id varchar(100),
order_status varchar(100)
);

create table orderCouponRelation (
coupon_code varchar(100),
order_id varchar(100)
);