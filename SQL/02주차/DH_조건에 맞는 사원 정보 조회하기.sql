SELECT SUM(SCORE) AS SCORE, A.EMP_NO, A.EMP_NAME, A.POSITION, A.EMAIL
FROM HR_EMPLOYEES A
    LEFT JOIN HR_DEPARTMENT B ON A.DEPT_ID = B.DEPT_ID
    LEFT JOIN HR_GRADE C ON A.EMP_NO = C.EMP_NO
GROUP BY A.EMP_NO
ORDER BY SCORE DESC
LIMIT 1