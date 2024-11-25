select Soldiers.Soldier_ID, Soldiers.Base_ID, Soldiers.Soldier_Name, Soldiers.Rank, Soldiers.Join_Date, Soldiers.Age, Soldiers.Mission_Number, Reports.Report_ID
from Soldiers
join Reports on Soldiers.Soldier_ID = Reports.Reporter_ID
join Missions on Missions.Mission_ID = Reports.Mission_ID
where Missions.Target like 'Terrorist%';