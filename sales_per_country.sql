-- Provide a query that shows the total sales per country.

SELECT SUM(total) totalSales, billingCountry
FROM Invoice
GROUP BY billingCountry