SELECT soldier_name,age
FROM Soldiers s JOIN Bases b on s.Base_ID = b.Base_ID
WHERE b.Commander LIKE 'Colonel%';