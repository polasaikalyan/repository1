use Training_20March_CloudChennai

create schema kaly



create table kaly.Employee
(
EmployeeId int primary key  Identity,
EmployeeName varchar(30) not null,
EmailId nvarchar(40) not null,
Designation varchar(30) not null,
PhoneNumber bigint not null,
Address varchar(100) not null,
DOB date not null,
Gender varchar(10) not null,
)


select * from kaly.Employee


drop table kaly.Employee
.......................................................................


create procedure kaly.Emp_Save
(
@EmployeeName varchar(30),
@EmailId nvarchar(40),
@Designation varchar(30),
@PhoneNumber bigint,
@Address varchar(100),
@DOB date,
@Gender varchar(10)
)
As
Begin
insert into kaly.Employee (EmployeeName,
EmailId,
Designation,
PhoneNumber,
Address,
DOB,
Gender)values(@EmployeeName,
@EmailId,
@Designation,
@PhoneNumber,
@Address,
@DOB,
@Gender)
End
exec kaly.Emp_Save 'anu', 'dsad', 'dsa', 523645237, 'dasd', '2019-8-8', 'fgerger'

drop procedure kaly.Emp_Save

.............................................................................



create procedure kaly.display
As
Begin
select * from kaly.Employee
End

exec kaly.display
drop procedure kaly.display
................................................................



create procedure kaly.Employee_delete
(
@EmployeeId int
)
As
begin
delete from kaly.Employee where EmployeeId = @EmployeeId
End


exec kaly.Employee_delete 2

................................................



create procedure kaly.Employee_upda
(
@EmployeeId int,
@EmployeeName varchar(30),
@EmailId nvarchar(40),
@Designation varchar(30),
@PhoneNumber bigint,
@Address varchar(100),
@DOB date,
@Gender varchar(10)
)
As
begin
Update kaly.Employee
set
  EmployeeName = @EmployeeName,
  EmailId = @EmailId,
  Designation =@Designation,
  PhoneNumber = @PhoneNumber,
  Address = @Address,
  DOB = @DOB,
  Gender = @Gender
  where EmployeeId = @EmployeeId
End


exec kaly.Employee 1 ,'anil','gdcsdgh','fds',1253458,'fert54','2019-08-08','dsa'
go

drop  procedure kaly.Employee_update
exec kaly.Employee_upda 2, '', 'dsad', 'dsa', 1231, 'dasd', '2019-8-8', 'dsa'
select * from kaly.Employee