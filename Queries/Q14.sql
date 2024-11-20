SELECT 
    Soldiers.Soldier_ID,
    Soldiers.Soldier_Name,
    Soldiers.Rank,
    COUNT(Permissions.Permission_ID) AS Annual_Leave_Count
FROM Soldiers
JOIN Permissions ON Soldiers.Soldier_ID = Permissions.Soldier_ID
WHERE Permissions.Permission_Type = 'Annual Leave'
GROUP BY Soldiers.Soldier_ID, Soldiers.Soldier_Name, Soldiers.Rank
ORDER BY Annual_Leave_Count DESC
LIMIT 5;
