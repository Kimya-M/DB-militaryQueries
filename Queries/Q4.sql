SELECT DISTINCT Soldiers.Soldier_Name
FROM Soldiers
Join Bases on Bases.Base_ID = Soldiers.Base_ID
JOIN Permissions on Permissions.Soldier_ID = Soldiers.Soldier_ID 
WHERE Bases.Location = 'California' AND Permissions.Permission_Type = 'Annual Leave';