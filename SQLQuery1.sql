use Training_20March_CloudChennai

create schema Repository


.........................................................


Create table Repository.StudentDetails
(
StudentId int primary key Identity(1,10) ,
Username varchar(30)  not null,
StudentName varchar(30) not null,
EmailId nvarchar(40) not null,
PhoneNumber bigint not null,
Address varchar(100) not null,
DOB date not null,
Gender varchar(10) not null,
Password nvarchar(30) not null,
HighSchoolMarks int not null,
IntermediateMarks int not null,st
GraduationCourse varchar(30) not null,
GraduationPercentage int not null,
constraint chk1 check (Gender in('Male','Female','TransGender'))
);

 
.............................................................

select * from Repository.StudentDetails

delete from Repository.StudentDetails where StudentId =211
drop table Repository.StudentDetails
insert into Repository.StudentDetails values('admin', 'admin', 'raj@gmail.com', '8341366529'
, 'hyd', '2019-12-10', 'Male', '123', 100, 200, 650, 65)



................................................................


create table Repository.AdminDetails
(
AdminId int primary key identity,
Username nvarchar(30) not null,
Password nvarchar(30) not null
);



drop table Repository.AdminDetails


..............................................................


create table Repository.Jobs
(
JobId int primary key identity,
JobTitle varchar(40) not null,
CompanyName varchar(50) not null,
JobDescription varchar(100) not null,
CreatedDate date not null
);


insert into Repository.Jobs values('d', 'd', 'dsa', '2019-12-12')
drop table Repository.Jobs
select * from  Repository.Jobs


.................................................................


create table Repository.JobsApplied
(
Id int primary key identity,
JobId int foreign key references Repository.Jobs(JobId) on delete cascade,
Username varchar(30) ,
AppliedDate date not null,
);

insert into Repository.JobsApplied values(1,'admin', '2019-12-12')
select * from Repository.JobsApplied

drop table Repository.JobsApplied

..................................................................




