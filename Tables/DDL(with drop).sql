DROP TABLE IF EXISTS Tasks;
DROP TABLE IF EXISTS Soldire_ID;
DROP TABLE IF EXISTS Permissions;
DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS Equipments;

create table Tasks
	(Task_ID		integer,
     Soldure_ID		integer,
	 Unit_ID		integer,
	 Mission_ID		integer,
     Task_Name		varchar(100),
     Description	text,
     Status			varchar(50),
	 primary key (Task_ID)
	);
    
 
create table Permissions
	(Permission_ID		integer,
	 Soldire_ID			integer,
	 Permission_Type	varchar(50),
     Start_Date 		date,
	 primary key (Permission_ID)
	);
    
create table Attendance
	(Attendance_ID 		int,
     Soldire_ID			int,
     Date				date,
     Status				boolean,
     Primary key (Attendance_ID)
     );

create table Reports
	(Report_ID			int,
     Reporter_ID		int,
     Mission_ID 		int,
     Reporter_Name		varchar(100),
     Report_Date		date,
     Content			text,
     primary key (Report_ID)
     );
create table Equipments
	(Equipment_ID		int,
     Base_ID			int, 
     Unit_ID_Uses		int, 
     Equipment_Type		varchar(100),
     Equipment_model	varchar(100),
     Quantity			int,
     PRIMARY KEY (Equipment_ID)
     );