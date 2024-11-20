WITH Total_Losses AS (
    SELECT 
        SUM(Missions.Soldiers_Lost) AS Total_Soldiers_Lost,
        SUM(Missions.Units_Lost) AS Total_Units_Lost
    FROM Missions
),
Texas_Losses AS (
    SELECT 
        SUM(Missions.Soldiers_Lost) AS Texas_Soldiers_Lost,
        SUM(Missions.Units_Lost) AS Texas_Units_Lost
    FROM Missions
    JOIN Bases ON Missions.Base_ID = Bases.Base_ID
    WHERE Bases.Location = 'Texas'
)
SELECT 
    (Texas_Losses.Texas_Soldiers_Lost * 100.0) / Total_Losses.Total_Soldiers_Lost AS Percent_Soldier_Losses_Texas,
    (Texas_Losses.Texas_Units_Lost * 100.0) / Total_Losses.Total_Units_Lost AS Percent_Unit_Losses_Texas
FROM Total_Losses, Texas_Losses;
