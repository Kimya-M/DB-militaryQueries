SELECT e.Equipment_Type, e.Equipment_Model
FROM Equipments e   
JOIN Units u ON e.Unit_ID_Uses = u.Unit_ID  
JOIN Tasks t ON u.Unit_ID = t.Task_ID
JOIN Missions m ON m.Mission_ID = t.Mission_ID   
JOIN Soldiers s ON s.Soldier_ID = t.Soldier_ID   
JOIN Bases b ON b.Base_ID = e.Base_ID   
WHERE u.Missions_Number < 11   
  AND m.Target LIKE 'Enemy%'   
  AND s.Mission_Number >= 3   
  AND b.Have_Air_Defense = 0;