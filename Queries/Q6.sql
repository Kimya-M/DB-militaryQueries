SELECT DISTINCT Soldiers.Soldier_Name
FROM Soldiers
JOIN Tasks ON Soldiers.Soldier_ID = Tasks.Soldier_ID 
JOIN Units ON Tasks.Unit_ID = Units.Unit_ID
WHERE Tasks.Status = 'Pending' AND Units.Unit_Type = 'Helicopter';
