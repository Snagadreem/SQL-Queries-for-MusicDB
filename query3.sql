SELECT State, COUNT(*) AS count 
FROM customers
WHERE State IS NOT NULL
GROUP BY State;