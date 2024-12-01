SELECT DISTINCT Attendance.date
from Attendance
where Attendance.Status = false
and EXISTS (SELECT DISTINCT Soldiers.soldier_ID
                 			  from Soldiers
                              JOIN Tasks on Soldiers.Soldier_ID = Tasks.Soldier_ID
                			  join Missions on Missions.Mission_ID = Tasks.Mission_ID
                			  where Missions.Soldiers_Lost > 3 and Attendance.Soldier_ID = Soldiers.Soldier_ID);