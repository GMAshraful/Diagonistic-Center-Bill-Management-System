create database DCMDB
go

use DCMDB

go

 create table TestType
 (
 ID int identity constraint PK_Type_ID primary key,
 typeName varchar(50) not null
 )

 go


 create table TestSetUp
 (
 ID int identity constraint PK_Test_ID primary key,
 testName varchar(50) not null,
 testFee money not null,
 typeID int constraint FK_Test_Type_ID  foreign key references TestType

 )

 go
   

 create table Patient
 (
 ID int identity constraint PK_Patient_ID primary key,
 patientName varchar(50) not null,
 DateOfBirth datetime,
 MobileNO int not null,
 BillNo nvarchar(250) not null constraint UQ_Patient_BillNo unique,
 BillDate date not null,
 TotalFee money,
 PaidBill money,

 )

 go
 create table PatientRequestTest
 ( ID int identity primary key,
   patientID int constraint FK_TestRequest_PatientID foreign key  references Patient,
   TestID int constraint FK_TestRequest_TestID  foreign key references TestSetup
 )

 