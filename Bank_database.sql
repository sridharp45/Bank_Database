create database bank_sridh;

use bank_sridh;
-- Customer_personal_information

create table Customer_personal_information
(
Customer_ID varchar(10),
Customer_Name varchar(50),
Customer_phone bigint(10),
Customer_Gender varchar(1),
Customer_Dateofbirth date,
Customer_Guardian_name varchar(50),
Customer_Martial_status varchar(1),
Customer_email varchar(50),
Customer_income varchar(10),
Customer_citizenship varchar(20),
constraint cust_info_pk primary key(Customer_ID)
);

create table Customer_Reference_information
(
Customer_ID varchar(10),
acc_name varchar(50),
acc_no bigint(12),
acc_address varchar(50),
Relation varchar(20),
constraint cust_ref_info_pk primary key(Customer_ID),
constraint cust_ref_info_pk foreign key(Customer_ID) references Customer_personal_information(Customer_ID)
);

-- Bank_Information
 create table Bank_info
 (
 Bank_IFSC_code varchar(8),
 Bank_name varchar(50),
 Bank_branch varchar(50),
 constraint bank_info_pk primary key(Bank_IFSC_code)
 );
  -- Account_Information
create table Account_info
(
acc_no bigint(12),
acc_type varchar(50),
Customer_ID bigint(10),
registration_date date,
activation_date date,
Bank_IFSC_code varchar(8),
Interest decimal(6,2),
intial_deposit bigint(10),
constraint acc_info_pk primary key(acc_no),
constraint acc_info_per_fk foreign key(Customer_ID) references Customer_personal_information (Customer_ID),
constraint acc_info_bank_fk foreign key(Bank_IFSC_code) references Bank_info (Bank_IFSC_code)
);

show tables;

-- bank info

insert into Bank_info(Bank_IFSC_code,Bank_name,Bank_branch
 
 
 