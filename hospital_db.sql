create database Hospital_DB
use Hospital_DB

-- Command to show list of tables 
select name,create_date, modify_date 
from sys.tables

CREATE TABLE Patients (
    PatientID INT,
    PatientName VARCHAR(100),
    Aadhaar VARCHAR(12),
    Gender VARCHAR(10),
    DOB DATE,
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

alter table Patients 
alter column PatientID int not null 

alter table Patients
add constraint PK_Patient primary key (PatientID)

alter table Patients 
add constraint UQ_Patients UNIQUE (Aadhaar)

alter table Patients
add constraint CK_Patients Check(Gender IN ('Male', 'Female'))

alter table Patients
alter column DOB date Not Null

CREATE TABLE Doctors (
    DoctorID INT,
    DoctorName VARCHAR(100),
    Email VARCHAR(100),
    DepartmentID INT,
    Experience INT
);

alter table Doctors 
alter column DoctorID int not null 

alter table Doctors
add constraint DK_Doctors primary key (DoctorID)

alter table Doctors
add constraint FK_DepartmentID foreign key (DepartmentID)
references Departments(DepartmentID)

CREATE TABLE Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(100)
);

alter table Departments 
alter column DepartmentID int not null 

alter table Departments
add constraint DepartmentID primary key (DepartmentID)

alter table Departments
add Constraint UQ_Departmentname Unique (Departmentname)


CREATE TABLE Rooms (
    RoomID INT,
    RoomType VARCHAR(20),
    ChargesPerDay DECIMAL(10,2)
);


alter table Rooms 
alter column RoomID int not null 

alter table Rooms
add constraint PK_RoomID primary key (RoomID)

alter table Rooms
add constraint CK_Rooms Check(RoomType IN ('General','ICU','Private'))

alter table Rooms 
add Constraint CK_RoomCharge check(ChargesPerDay > 0)


--Appointments: 
--• AppointmentID → Primary Key 
--• PatientID → Foreign Key 
--• DoctorID → Foreign Key 
--• AppointmentDate → Default GETDATE()

CREATE TABLE Appointments (
    AppointmentID INT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATETIME
);

alter table Appointments
alter column AppointmentID int not null

alter table Appointments
add constraint PK_Appointmentid primary key (AppointmentID)

alter table Appointments 
add constraint FK_patientid foreign key (PatientID)
references Patients (PatientID)

alter table Appointments 
add constraint FK_DoctorID foreign key (DoctorID)
references Doctors (DoctorID)

alter table Appointments
add constraint DF_APDate 
default getDAte() for AppointmentDate

------------------- Syntax for defualt constraint
--ALTER TABLE Persons
--ADD CONSTRAINT df_City
--DEFAULT 'Sandnes' FOR City;



CREATE TABLE Admissions (
    AdmissionID INT,
    PatientID INT,
    RoomID INT,
    AdmitDate DATETIME,
    DischargeDate DATETIME
);

--Admissions: 
--• AdmissionID → Primary Key 
--• PatientID → Foreign Key 
--• RoomID → Foreign Key 
--• AdmitDate → Default GETDATE() 
--• DischargeDate → Nullable

alter table Admissions 
alter column AdmissionID int not null

alter table Admissions
add constraint PK_AdmissionID primary key (AdmissionID)

alter table Admissions 
add constraint FK_admiPatientID foreign key (PatientID)
references Patients (PatientID)

alter table Admissions 
Add Constraint FK_AdmiRoomID foreign key (RoomID)
references Rooms (RoomID)

CREATE TABLE Treatments (
    TreatmentID INT,
    AdmissionID INT,
    TreatmentDescription VARCHAR(255),
    TreatmentCost DECIMAL(10,2)
);

sp_help 'Treatments'

--Treatments: 
--• TreatmentID → Primary Key 
--• AdmissionID → Foreign Key 
--• TreatmentCost → Check (>0)


alter table Treatments 
alter column TreatmentID int not null

alter table Treatments
add constraint PK_TreatmentID primary key (TreatmentID)

alter table Treatments 
add constraint FK_AdmissionID foreign key (AdmissionID)
references Admissions (AdmissionID)

CREATE TABLE Bills (
    BillID INT,
    AdmissionID INT,
    TotalAmount DECIMAL(10,2)
);

alter table Bills 
alter column BillID int not null

alter table Bills
add constraint PK_BillID primary key (BillID)

alter table Bills 
add constraint FK_Bill_AdmissionID foreign key (AdmissionID)
references Admissions (AdmissionID)


--Bills: 
--• BillID → Primary Key 
--• AdmissionID → Foreign Key 
--• TotalAmount → Check (>0) 



CREATE TABLE Payments (
    PaymentID INT,
    BillID INT,
    PaymentMode VARCHAR(20),
    PaidAmount DECIMAL(10,2),
    PaymentDate DATETIME
);


--Payments: 
--• PaymentID → Primary Key 
--• BillID → Foreign Key 
--• PaymentMode → Check ('Cash','Card','UPI') 
--• PaidAmount → Check (>0)

INSERT INTO Departments VALUES
(1,'Cardiology'),
(2,'Neurology'),
(3,'Orthopedics'),
(4,'Pediatrics'),
(5,'General Medicine');




