SELECT e.Quantity
FROM Equipments e JOIN Missions m on e.Base_ID = m.Base_ID
JOIN Units u on e.Unit_ID_Uses = u.Unit_ID
where m.Units_Lost >= 1 and u.Unit_Type = 'Helicopter';