SELECT DISTINCT Soldiers.Soldier_Name
FROM Soldiers
NATURAL JOIN Permissions 
NATURAL Join Bases
WHERE Bases.Location = 'California' AND Permissions.Permission_Type = 'Annual Leave';