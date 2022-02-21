--  Which sales agent made the most in sales overall?

SELECT firstName, lastName, MAX(totalSales)
FROM (
SELECT 
    e.firstName, 
    e.lastName, 
    SUM(i.total) totalSales
FROM Employee e 
JOIN Customer c ON c.supportRepId = e.employeeId
JOIN Invoice i ON i.customerId = c.customerId
GROUP BY e.employeeId
)