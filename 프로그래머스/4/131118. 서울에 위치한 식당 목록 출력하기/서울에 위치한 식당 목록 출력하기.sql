-- 코드를 입력하세요
SELECT I.REST_ID, I.REST_NAME, I.FOOD_TYPE, I.FAVORITES, I.ADDRESS, 
       ROUND(SUM(R.REVIEW_SCORE) / COUNT(I.REST_ID), 2) AS SCORE
FROM REST_INFO AS I, REST_REVIEW AS R
WHERE R.REST_ID = I.REST_ID AND I.ADDRESS LIKE '서울%'
GROUP BY I.REST_NAME
ORDER BY SCORE DESC, I.FAVORITES DESC