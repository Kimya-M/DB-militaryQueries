SELECT DISTINCT m.mission_name
FROM Missions m
JOIN Tasks t ON t.Mission_ID = m.Mission_ID
JOIN Units u ON t.Unit_ID = u.Unit_ID
JOIN Soldiers s ON t.Soldier_ID = s.Soldier_ID
WHERE s.Age > 25 AND u.Unit_Type = 'Tank';
