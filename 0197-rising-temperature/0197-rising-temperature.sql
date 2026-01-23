# Write your MySQL query statement below
SELECT Y.id as Id
FROM WEATHER AS Y
JOIN WEATHER AS W
ON Y.recordDate = W.recordDate + INTERVAL 1 DAY
where Y.temperature > W.temperature 