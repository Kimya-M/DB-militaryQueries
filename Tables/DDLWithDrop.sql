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





    
