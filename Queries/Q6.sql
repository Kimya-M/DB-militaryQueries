SELECT DISTINCT Soldiers.Soldier_Name
FROM Soldiers
NATURAL JOIN Tasks 
NATURAL Join Units
WHERE Tasks.Status = 'Pending' and Units.Unit_Type = 'Helicopter'