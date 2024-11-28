SELECT DISTINCT Attendance.date
from Attendance
where Attendance.Status = false
and Attendance.Soldier_ID in (SELECT DISTINCT Soldiers.soldier_ID
                 			  from Soldiers
                			  join Missions on Missions.Base_ID = Soldiers.Base_ID
                			  where Missions.Soldiers_Lost > 3);