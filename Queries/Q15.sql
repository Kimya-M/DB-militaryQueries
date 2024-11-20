SELECT COUNT(DISTINCT s.soldier_id)
FROM Soldiers s JOIN Bases b on s.Base_ID = b.Base_ID
JOIN Tasks t on t.Soldier_ID = s.Soldier_ID
WHERE t.Status = 'In Progress';