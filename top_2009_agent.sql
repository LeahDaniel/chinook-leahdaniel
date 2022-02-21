--  Which sales agent made the most in sales in 2009?

SELECT firstName, lastName, MAX(totalSales)
FROM (
SELECT 
    e.firstName, 
    e.lastName, 
    SUM(i.total) totalSales
FROM Employee e 
JOIN Customer c ON c.supportRepId = e.employeeId
JOIN Invoice i ON i.customerId = c.customerId
WHERE i.invoiceDate LIKE "2009%"
GROUP BY e.employeeId
)

