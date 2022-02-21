-- Provide a query that shows the customers and employees associated
-- with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT i.total, c.firstName as customerFirst, c.lastName as customerLast, e.firstName, e.lastName, c.country
FROM Invoice i
JOIN Customer c ON c.customerId = i.customerId
JOIN Employee e ON c.supportRepId = e.employeeId 