-- Provide a query that shows each Invoice line item,
-- with the name of the track that was purchased.

SELECT i.invoiceLineId, t.name
FROM InvoiceLine i 
JOIN Track t ON t.trackid = i.trackId
ORDER BY i.InvoiceLineId
