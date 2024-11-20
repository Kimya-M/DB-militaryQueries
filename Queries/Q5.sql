SELECT e.Equipment_Model,b.Base_Name
FROM Equipments e JOIN Bases b ON e.Base_ID = b.Base_ID JOIN Units u on
u.Unit_ID = e.Unit_ID_Uses AND u.Base_ID = e.Base_ID
WHERE u.Unit_Type = 'Tank';
