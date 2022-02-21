-- Provide a query showing the Invoices of Customers who are from Brazil. 
-- The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country

SELECT c.firstName, c.lastName, i.invoiceId, i.invoiceDate, i.billingCountry
FROM Customer c
JOIN Invoice i ON i.customerId = c.customerId
WHERE c.country = "Brazil"

