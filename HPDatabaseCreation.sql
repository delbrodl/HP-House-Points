-- Your  sql to define your tables and constrains goes in this file
-- Switch to the system (aka master) database
USE master;
GO

-- Delete the HarryPotterFun Database (IF EXISTS)
IF EXISTS(select * from sys.databases where name='HarryPotterFun')
DROP DATABASE HarryPotterFun;
GO

-- Create a new HarryPotterFun Database
CREATE DATABASE HarryPotterFun;
GO

-- Switch to the HarryPotterFun Database
USE HarryPotterFun
GO

BEGIN TRANSACTION

CREATE TABLE House 
(
house_id		int			identity(1,1),
house_name		varchar(50)	not null,
total_points	int			not null,

constraint pk_House primary key (house_id)	
);

CREATE TABLE Student 
(
student_id		int				identity(1, 1), 
first_name		varchar(50)		not null, 
last_name		varchar(50)		not null, 
house_id		int				not null,

constraint pk_Student primary key (student_id),
constraint fk_Student_House foreign key (house_id) references House (house_id)
);

CREATE TABLE Staff
(
staff_id	int			identity(1, 1), 
first_name	varchar(50)	not null,
last_name	varchar(50)	not null,
house_id	int			not null

constraint pk_Staff primary key (staff_id),
constraint fk_Staff_House foreign key (house_id) references House (house_id)
);

CREATE TABLE Course 
(
course_id		int			identity(1, 1), 
course_name		varchar(50)	not null, 
staff_id		int			not null,	-- professor assigned

constraint pk_Course primary key (course_id),
constraint fk_Course_Staff foreign key (staff_id) references Staff (staff_id)
);

CREATE TABLE Enrollment (
course_id	int		not null, 
student_id	int		not null

constraint pk_Enrollment primary key (course_id, student_id)
constraint fk_Enrollment_Course foreign key (course_id) references Course (course_id),
constraint fk_Enrollment_Student foreign key (student_id) references Student (student_id)
);

CREATE TABLE HousePoint (
house_point_id	int		identity(1, 1),
staff_id		int		not null, 
student_id		int		not null, 
points			int		not null

constraint pk_HousePoint primary key (house_point_id),
constraint fk_HousePoint_Staff foreign key (staff_id) references Staff (staff_id),
constraint fk_HousePoint_Student foreign key (student_id) references Student (student_id)
);

COMMIT TRANSACTION
