-- 601. Human Traffic of Stadium
-- https://leetcode.com/problems/human-traffic-of-stadium/
WITH CTE AS(
    SELECT *, ID- ROW_NUMBER() OVER() AS ID_DIFF
    FROM STADIUM
    WHERE PEOPLE > 99
)

SELECT ID, VISIT_DATE, PEOPLE
FROM CTE
WHERE ID_DIFF IN (SELECT ID_DIFF FROM CTE GROUP BY ID_DIFF HAVING COUNT(ID_DIFF) >= 3)
ORDER BY VISIT_DATE