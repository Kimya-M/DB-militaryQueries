SELECT e.Equipment_Model,b.Base_Name
FROM Equipments e JOIN Bases b ON e.Base_ID = b.Base_ID JOIN Units u on
u.Unit_ID = e.Unit_ID_Uses
WHERE u.Unit_Type = 'Tank';
