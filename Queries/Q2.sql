select SUM(Soldiers.Age) AS Sum_Major_Soldiers
from Soldiers
where Soldiers.Rank = 'Major';