SELECT s.soldier_name, u.unit_type, m.mission_name
FROM Soldiers s 
join Tasks t on t.Soldier_ID = s.Soldier_ID
join Missions m on t.Mission_ID = m.Mission_ID
join Units u on u.Unit_ID = t.Unit_ID
WHERE s.Age < 28