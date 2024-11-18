DROP TABLE IF EXISTS Tasks;
DROP TABLE IF EXISTS Soldire_ID;
DROP TABLE IF EXISTS Permissions;
DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS Equipments;
DROP TABLE IF EXISTS Bases;
DROP TABLE IF EXISTS Units;
DROP TABLE IF EXISTS Soldiers;
DROP TABLE If EXISTS Missions;

CREATE TABLE Bases (
    Base_ID INTEGER,
    Base_Name VARCHAR(255),
    Location VARCHAR(255),
    Soldier_Number INTEGER,
    Have_Air_Defense BOOLEAN,
    Commander VARCHAR(100),
    PRIMARY KEY (Base_ID)
);

CREATE TABLE Units (
    Unit_Id INTEGER,
    Base_Id INTEGER,
    Unit_Type VARCHAR(100),
    Unit_Model VARCHAR(100),
    Create_Year DATE,
    Missions_Number INTEGER,
    PRIMARY KEY (Unit_Id),
    FOREIGN KEY (Base_Id) REFERENCES Bases(Base_ID)
);

CREATE TABLE Soldiers (
    Soldier_ID INTEGER,
    Base_ID INTEGER,
    Soldier_Name VARCHAR(255),
    Rank VARCHAR(255),
    Join_Date DATE,
    Age INTEGER,
    Mission_Number INTEGER,
    PRIMARY KEY (Soldier_ID),
    FOREIGN KEY (Base_ID) REFERENCES Bases(Base_ID)
);

CREATE TABLE Missions (
    Mission_ID INT,
    Base_ID INT,
    Mission_Name VARCHAR(100),
    Start_Date DATE,
    End_Date DATE,
    Target VARCHAR(100),
    Soldiers_Lost INT,
    Units_Lost INT,
    PRIMARY KEY (Mission_ID),
    FOREIGN KEY (Base_ID) REFERENCES Bases(Base_ID)
);

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