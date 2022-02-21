-- Provide a query that shows all Invoices. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice

SELECT COUNT(*) total, i.invoiceId
FROM Invoice i
JOIN InvoiceLine il ON il.invoiceId = i.invoiceId
GROUP BY i.invoiceId