create database employee;

use employee;
CREATE TABLE DEPARTMENTS(DEPARTMENT_ID INT PRIMARY KEY,DEPARTMENT_NAME VARCHAR(100));
DESCRIBE departments;
create table location(location_id int primary key,department_name varchar(100));
create table employees(employee_id int primary key,employee_name varchar(50),gender enum('M','F'),AGE INT,HIRE_DATE DATE,DESIGNATION VARCHAR(100),DEPARTMENT_ID INT,LOCATION_ID INT,SALARY DECIMAL(10,2),
FOREIGN KEY(DEPARTMENT_ID)REFERENCES DEPARTMENTS(DEPARTMENT_ID),FOREIGN KEY(LOCATION_ID)REFERENCES LOCATION(LOCATION_ID));
ALTER TABLE EMPLOYEES ADD EMAIL VARCHAR(100);
DESC EMPLOYEES;
ALTER TABLE EMPLOYEES MODIFY DESIGNATION VARCHAR(200);
ALTER TABLE EMPLOYEES DROP column age;
alter table employees rename column hire_date to date_of_joining;
desc employees;
rename table departments to deaprtments_info;
desc employees;
desc deprtamets_info;
desc loction;
rename table location to locations;
truncate table employees;
drop table employees;drop database employee;
drop database if exists employee;
create database employee;
use employee;
create table departments(department_id int primary key auto_increment,department_name varchar(100) not null unique);
desc departments;
LOCATION_ID int primary key auto_increment;
CREATE TABLE LOCATION(LOCATION_ID INT PRIMARY KEY AUTO_INCREMENT,LOCATION VARCHAR(30) NOT NULL UNIQUE);
desc location;
employee_id INT PRIMARY KEY AUTO_INCREMENT;
create table employees(employee_id int primary key auto_increment,employee_name varchar(50) not null,
gender enum('M','F'),age int check(age>= 18),hire_date date default(current_date),designation varchar(100),
department_id int,location_id int,salary decimal(10,2),foreign key (department_id)references departments(department_id),
foreign key(location_id)references location(location_id));






