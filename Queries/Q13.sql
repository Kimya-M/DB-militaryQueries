SELECT s.soldier_name, u.unit_type, m.mission_name
FROM Soldiers s JOIN Units u ON s.Base_ID = u.Base_ID
JOIN Missions m on m.Base_ID = s.Base_ID
WHERE s.Age < 28