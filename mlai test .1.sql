-- 1. Are there any holidays in March?
SELECT Holiday
FROM table_holidaylist
WHERE MONTH(Date) = 3;

-- 2. Sorry, I meant December
SELECT Holiday
FROM table_holidaylist
WHERE MONTH(Date) = 12;

-- 3. When does this year's holiday marking the end of Ramadan start?
SELECT Date
FROM table_holidaylist
WHERE Holiday = 'Eid al-Adha'
ORDER BY Date
LIMIT 1;

-- 4. How many days is it celebrated for this year?
SELECT DATEDIFF(
    (SELECT Date FROM table_holidaylist WHERE Holiday = 'Eid al-Adha'),
    (SELECT Date FROM table_holidaylist WHERE Holiday = 'Eid al-Adha Holiday')
) + 1;

-- 5. Today is July 16. When is the nearest holiday?
SELECT Holiday, Date
FROM table_holidaylist
WHERE Date > '2023-07-16'
ORDER BY Date
LIMIT 1;
