select avg(Soldiers.Age) as Average_Age
FROM Soldiers
NATURAL join Missions
where 1 <= (SELECT count(Attendance.Status)
            from Attendance
            where Attendance.Status = false 
            and Soldiers.Soldier_ID = Attendance.Soldier_ID)
and Missions.Target like 'Supply%';