-- Provide a query that shows the total number of invoices per country.

SELECT COUNT(*) totalInvoices, billingCountry
FROM Invoice
GROUP BY billingCountry