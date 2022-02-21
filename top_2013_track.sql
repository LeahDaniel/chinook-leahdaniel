-- Provide a query that shows the most purchased track(s) of 2013.


SELECT t.name, COUNT(il.trackId) totalPurchased
FROM InvoiceLine il
JOIN Invoice i ON il.invoiceId = i.InvoiceId
JOIN Track t ON il.trackId = t.trackId
WHERE i.InvoiceDate LIKE "2013%"
GROUP BY il.TrackId
ORDER BY totalPurchased DESC
