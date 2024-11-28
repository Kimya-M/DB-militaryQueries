SELECT b.Base_Name
 From Bases b JOIN Soldiers s on b.Base_ID = s.Base_ID 
 join Tasks t on t.Soldier_ID = s.Soldier_ID
 JOIN Missions m on m.Mission_ID = t.Mission_ID
 JOIN Units u on u.Unit_ID = t.Unit_ID
 WHERE s.Rank = 'Captain' and m.Soldiers_Lost > 3 and u.Unit_Type = 'Tank'