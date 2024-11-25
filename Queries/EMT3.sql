SELECT b.Base_Name
 From Bases b JOIN Soldiers s on b.Base_ID = s.Base_ID 
 JOIN Missions m on m.Base_ID = s.Base_ID
 JOIN Units u on u.Base_ID = m.Base_ID
 WHERE s.Rank = 'Captain' and m.Soldiers_Lost > 3 and u.Unit_Type = 'Tank'
