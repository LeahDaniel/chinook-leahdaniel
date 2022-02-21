-- Provide a query that shows how many customers are assigned to each employee.
-- The resultant table should include:
-- Employee full name
-- Total number of customers assigned to each employee (even if it's zero)

SELECT e.firstName, e.lastName, COUNT(*) totalCustomers
FROM Employee e 
JOIN Customer c ON c.supportRepId = e.employeeId
GROUP BY e.employeeId


--Same as:

SELECT e.firstName, e.lastName, COUNT(*) totalCustomers
FROM Customer c
JOIN Employee e ON c.supportRepId = e.employeeId
GROUP BY e.employeeId