select Soldiers.Soldier_ID, Soldiers.Base_ID, Soldiers.Soldier_Name, Soldiers.Rank, Soldiers.Join_Date, Soldiers.Age, Soldiers.Mission_Number, Reports.Report_ID
from Soldiers
NATURAL join Reports
NATURAL join Missions
where Missions.Target like 'Terrorist%';