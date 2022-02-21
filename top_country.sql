-- Which country's customers spent the most?
SELECT billingCountry, MAX(totalSales)
FROM (
    SELECT SUM(total) totalSales, billingCountry
    FROM Invoice
    GROUP BY billingCountry
    )