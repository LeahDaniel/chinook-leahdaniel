-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT t.name, COUNT(il.trackId) totalPurchased
FROM InvoiceLine il
JOIN Track t ON il.trackId = t.trackId
GROUP BY il.TrackId
ORDER BY totalPurchased DESC
LIMIT 5
