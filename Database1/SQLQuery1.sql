create database Payroll1;

select Name from sys.databases


select db_name()

create table employee_payroll
(
id int identity primary key,
name varchar(20) not null,
salary money not null,
start_date date not null
)

alter table employee_payroll add primary key(id)

insert into employee_payroll values ('Ashwani',100000.0,'11-02-2023')
insert into employee_payroll values ('karma',150000.0,'12-02-2023')
insert into employee_payroll values 
('piyush',160000.0,'2023-01-4'),
('ravi',12000.0,'2023-01-7'),
('ashit',190000.0,'2023-01-25'),
('kerketta',180000.0,'2023-01-31')

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='employee_payroll'

select * from employee_payroll

select name as 'Employee Name' from employee_payroll

select salary from employee_payroll where name='Ashwani'

select getdate();

select * from employee_payroll where start_date between '2023-01-07' and '2023-01-31'
select * from employee_payroll where start_date between '2023-01-07' and GETDATE()

alter table employee_payroll add Gender char(1)

update employee_payroll set gender='F' where name='ravi'

select * from employee_payroll

update employee_payroll set gender='M' where id in(1,2,3,9)
update employee_payroll set gender='M' where id in(7)
update employee_payroll set gender='F' where id in(10)

select gender, sum(salary) from employee_payroll  where gender='M' group by gender

alter table employee_payroll add
Employee_phone varchar(15),
address varchar(300) not null default 'india',
department varchar(50)

update employee_payroll set address='india' where id in(1,2,7,8,9,10)

update employee_payroll set department='cs' where id in(1,2,7,8,9,10)

select * from employee_payroll

alter table employee_payroll add
basic_pay money,
deduction money,
taxable_pay money,
income_tax money,
net_pay money 

insert into employee_payroll values ('Ashwani',100000.0,'2019-9-12','M',NULL,'india','civil',null,null,null,null,null)

select * from employee_payroll where Gender='M'

update employee_payroll set name='Sumit' where id=12

