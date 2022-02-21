-- Provide a query that shows each Invoice line item,
-- with the name of the track that was purchase, and the name of the artist.

SELECT i.invoiceLineId, t.name, ar.name
FROM InvoiceLine i 
JOIN Track t ON t.trackid = i.trackId
JOIN Album al ON t.albumId = al.albumId
JOIN Artist ar ON ar.artistId = al.artistId
ORDER BY i.InvoiceLineId