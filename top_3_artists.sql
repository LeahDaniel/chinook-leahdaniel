-- Provide a query that shows the top 3 best selling artists.

SELECT ar.name, COUNT(*) totalPurchased
FROM InvoiceLine il
JOIN Track t ON il.trackId = t.trackId
JOIN Album a ON a.albumId = t.albumId
JOIN Artist ar ON ar.artistId = a.artistId
GROUP BY ar.artistId
ORDER BY totalPurchased DESC
LIMIT 3