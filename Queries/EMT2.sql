SELECT t.Task_Name, t.Description,t.Status
FROM Tasks t JOIN Soldiers s on t.Soldier_ID = s.Soldier_ID 
JOIN Units u on u.Unit_ID = t.Unit_ID
JOIN Equipments e on e.Unit_ID_Uses = u.Unit_ID 
where s.Age > 27 
	and u.Missions_Number > 14 
	and e.Quantity < 60