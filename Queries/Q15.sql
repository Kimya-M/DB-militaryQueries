SELECT SUM(Bases.soldier_number) AS Total_Soldiers
FROM Bases JOIN Soldiers on Bases.Base_ID = Soldiers.Base_ID
where Soldiers.Soldier_ID in 
(
  SELECT Soldiers.Soldier_ID
  FROM Soldiers JOIN Tasks on Soldiers.Soldier_ID = Tasks.Soldier_ID
  WHERE Tasks.Status = 'In Progress'
)
