SELECT history_id, car_id, DATE_FORMAT(start_date, '%Y-%m-%d') AS start_date, 
DATE_FORMAT(end_date, '%Y-%m-%d') AS end_date,
IF(DATEDIFF(end_date, start_date) >= 29, '장기 대여', '단기 대여') AS rent_type
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE >= '2022-09-01 00:00:00' AND START_DATE < '2022-10-01 00:00:00'
order by history_id DESC