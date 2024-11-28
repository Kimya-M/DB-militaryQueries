select avg(Soldiers.Age) as Average_Age
FROM Soldiers
JOIN Tasks t ON t.Soldier_ID = Soldiers.Soldier_ID 
join Missions on t.Mission_ID = Missions.Mission_ID
where 1 <= (SELECT count(Attendance.Status)
            from Attendance
            where Attendance.Status = false 
            and Soldiers.Soldier_ID = Attendance.Soldier_ID)
and Missions.Target like 'Supply%';
