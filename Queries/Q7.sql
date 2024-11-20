SELECT s.mission_number, s.age, s.soldier_name, b.commander
From Soldiers s JOIN Bases b on s.Base_ID = b.Base_ID 
JOIN Permissions p on s.Soldier_ID = p.Soldier_ID
WHERE start_date LIKE '2024-04-__';