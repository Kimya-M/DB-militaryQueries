DROP TABLE IF EXISTS Bases;
DROP TABLE IF EXISTS Units;
DROP TABLE IF EXISTS Soldiers;
DROP TABLE If EXISTS Missions;
DROP TABLE IF EXISTS Tasks;
DROP TABLE IF EXISTS Reports;
DROP TABLE IF EXISTS Permissions;
DROP TABLE IF EXISTS Attendance;
DROP TABLE IF EXISTS Equipments;

create table Tasks
	(Task_ID		integer,
     Soldier_ID		integer,
	 Unit_ID		integer,
	 Mission_ID		integer,
     Task_Name		varchar(100),
     Description	text,
     Status			varchar(50),
	 primary key (Task_ID)
     FOREIGN KEY (Soldier_ID) REFERENCES Soldiers(Soldier_ID),
     FOREIGN KEY (Unit_ID) REFERENCES Units(Unit_ID),
     FOREIGN KEY (Mission_ID) REFERENCES Missions(Mission_ID)
	);
    
 
create table Permissions
	(Permission_ID		integer,
	 Soldier_ID			integer,
	 Permission_Type	varchar(50),
     Start_Date 		date,
	 primary key (Permission_ID),
     FOREIGN KEY (Soldier_ID) REFERENCES Soldiers(Soldier_ID)
	);
    
create table Attendance
	(Attendance_ID 		int,
     Soldier_ID			int,
     Date				date,
     Status				boolean,
     Primary key (Attendance_ID),
     FOREIGN KEY (Soldier_ID) REFERENCES Soldiers(Soldier_ID)
     );

create table Reports
	(Report_ID			int,
     Reporter_ID		int,
     Mission_ID 		int,
     Reporter_Name		varchar(100),
     Report_Date		date,
     Content			text,
     primary key (Report_ID),
     FOREIGN KEY (Reporter_ID) REFERENCES Soldiers(Reporter_ID),
     FOREIGN KEY (Mission_ID) REFERENCES Missions(Mission_ID)
     );
create table Equipments
	(Equipment_ID		int,
     Base_ID			int, 
     Unit_ID_Uses		int, 
     Equipment_Type		varchar(100),
     Equipment_Model	varchar(100),
     Quantity			int,
     PRIMARY KEY (Equipment_ID),
     FOREIGN KEY (Unit_ID_Uses) REFERENCES Units(Unit_ID_Uses)
     
     );

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
    Unit_ID INTEGER,
    Base_ID INTEGER,
    Unit_Type VARCHAR(100),
    Unit_Model VARCHAR(100),
    Create_Year DATE,
    Missions_Number INTEGER,
    PRIMARY KEY (Unit_ID),
    FOREIGN KEY (Base_ID) REFERENCES Bases(Base_ID)
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





    