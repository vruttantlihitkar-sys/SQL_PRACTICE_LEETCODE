-- with x as
--  (select *
-- from stadium
-- where people >= 100 
-- ) 

-- select id , visit_date , people , lag(id,1,id)over(order by id asc ) - (lag(id)over(order by id asc ) + 1) as lagg
-- from x 

WITH filtered AS (
    SELECT *,
           id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    FROM stadium
    WHERE people >= 100
),

grouped AS (
    SELECT grp
    FROM filtered
    GROUP BY grp
    HAVING COUNT(*) >= 3
)

SELECT id, visit_date, people
FROM filtered
WHERE grp IN (SELECT grp FROM grouped)
ORDER BY visit_date;

    -- SELECT *,
    --        id - ROW_NUMBER() OVER (ORDER BY id) AS grp
    -- FROM stadium
    -- WHERE people >= 100