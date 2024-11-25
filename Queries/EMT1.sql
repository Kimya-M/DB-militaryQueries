WITH Tot_soldiers AS (
  SELECT COUNT(Soldiers.Soldier_ID) AS Total_Number_Of_Soldiers
  FROM Soldiers
),
Qualified_Soldiers AS (
  SELECT COUNT(DISTINCT Soldiers.Soldier_ID) AS Total_Number_Of_Qulified_Soldiers
  FROM Soldiers
  join Bases on Soldiers.Base_ID = Bases.Base_ID
  WHERE Bases.Have_Air_Defense = 1
  and Soldiers.Soldier_ID IN (
    SELECT DISTINCT Permissions.Soldier_ID
    FROM Permissions
    WHERE Permissions.Permission_Type = 'Sick Leave'
  )
  AND Soldiers.Soldier_ID IN (
    SELECT DISTINCT Soldiers.Soldier_ID
    FROM Soldiers
    jOIN Tasks on Tasks.Soldier_ID = Soldiers.Soldier_ID 
    JOIN Units on Tasks.Unit_ID = Units.Unit_ID 
    join Reports on Soldiers.Soldier_ID = Reports.Reporter_ID 
    Join Missions on Tasks.Mission_ID = Missions.Mission_ID 
    WHERE Units.Unit_Type = 'Aircraft'
  )
)
SELECT (Qualified_Soldiers.Total_Number_Of_Qulified_Soldiers * 100.0) /Tot_soldiers.Total_Number_Of_Soldiers AS percentage
FROM Tot_soldiers, Qualified_Soldiers;
