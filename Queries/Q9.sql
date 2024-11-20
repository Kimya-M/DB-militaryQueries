SELECT DISTINCT m.mission_name
FROM Missions m JOIN Units u on m.Base_ID = u.Base_ID
JOIN Soldiers s on s.Base_ID = m.Base_ID
WHERE s.Age > 25 and u.Unit_Type = 'Tank';