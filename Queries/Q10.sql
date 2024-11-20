SELECT DISTINCT Attendance.date, Attendance.Soldier_ID
from Attendance
where Attendance.Status = false
and Attendance.Soldier_ID in (SELECT DISTINCT Soldiers.soldier_ID
                 			  from Soldiers
                			  NATURAL join Missions
                			  where Missions.Soldiers_Lost > 3);