SELECT e.Equipment_Type, e.Equipment_Model
from Equipments e JOIN Units u on e.Unit_ID_Uses = u.Unit_ID 
JOIN Missions m on m.Base_ID = u.Base_ID 
JOIN Soldiers s on s.Base_ID = m.Mission_ID
JOIN Bases b on b.Base_ID = S.Base_ID
WHERE u.Missions_Number < 11 and 
m.Target LIKE 'Enemy%' and
s.Mission_Number >= 3 and
b.Have_Air_Defense = 0