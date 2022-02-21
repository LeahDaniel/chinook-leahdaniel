-- Provide a query only showing the Customers from Brazil.

SELECT c.firstName, c.lastName, c.customerId, c.country 
FROM Customer c
WHERE c.country IS "Brazil"