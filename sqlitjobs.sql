

SELECT 
    Country_code,
    ROUND(AVG((salary_from_b2b + salary_to_b2b) / 2), 0) * 0.4 AS avg_b2b_salary,
    ROUND(AVG((salary_from_permanent + salary_to_permanent) / 2), 0) *0.4 AS avg_permanent_salary,
    COUNT(*) AS total_offers
FROM itjobs
WHERE 
    Country_code IS NOT NULL AND
	salary_from_b2b > 0 AND
	salary_to_b2b > 0 AND
	salary_from_permanent > 0 AND
	salary_to_permanent > 0
GROUP BY Country_code
ORDER BY avg_b2b_salary DESC;



WITH AllSkills AS (
    SELECT skills_name_0 AS skill_name FROM itjobs WHERE skills_name_0 IS NOT NULL
    UNION ALL
    SELECT skills_name_1 FROM itjobs WHERE skills_name_1 IS NOT NULL
    UNION ALL
    SELECT skills_name_2 FROM itjobs WHERE skills_name_2 IS NOT NULL
)
SELECT skill_name, COUNT(*) as demand_count
FROM AllSkills
GROUP BY skill_name
ORDER BY demand_count DESC
LIMIT 10;


SELECT Experience_level, count(Workplace_type) 
FROM itjobs 
WHERE Workplace_type = 'remote' 
GROUP BY Experience_level;


SELECT Country_code, COUNT(*) AS total_offers
FROM itjobs
GROUP BY  Country_code
ORDER BY total_offers DESC
LIMIT 5;

SELECT 
    CASE 
        WHEN Remote = TRUE THEN 'remote'
        ELSE 'in person or mix' 
    END AS work_model,
    ROUND(AVG((salary_from_b2b + salary_to_b2b) / 2), 0) AS avg_b2b_pln,
    COUNT(*) as offer_count
FROM itjobs
WHERE salary_from_b2b IS NOT NULL AND salary_currency_b2b = 'pln'
GROUP BY work_model;