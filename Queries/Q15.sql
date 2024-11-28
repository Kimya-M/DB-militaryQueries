SELECT COUNT(DISTINCT s.Soldier_ID) AS Total_Soldiers
FROM Soldiers s
WHERE s.Base_ID IN (
    SELECT DISTINCT s.Base_ID
    FROM Soldiers s
    JOIN Tasks t ON s.Soldier_ID = t.Soldier_ID
    WHERE t.Status = 'In Progress'
);
