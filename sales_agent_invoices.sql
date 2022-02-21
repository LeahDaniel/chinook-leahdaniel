-- Provide a query that shows the invoices associated with each sales agent. 
-- The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT i.invoiceId, e.firstName || " " || e.lastName AS fullName
FROM Employee e 
JOIN Customer c ON c.supportRepId = e.employeeId 
JOIN Invoice i ON c.customerId = i.customerId