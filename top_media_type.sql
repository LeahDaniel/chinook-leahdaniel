-- Provide a query that shows the most purchased Media Type.

SELECT name, MAX(totalPurchased) FROM(
    SELECT mt.name, COUNT(*) totalPurchased
    FROM InvoiceLine il
    JOIN Track t ON il.trackId = t.trackId
    JOIN MediaType mt ON mt.mediaTypeId = t.mediaTypeId
    GROUP BY mt.mediaTypeId
    ORDER BY totalPurchased DESC
)