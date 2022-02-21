-- Looking at the InvoiceLine table, 
-- provide a query that COUNTs the number of line items for each Invoice.

SELECT COUNT(*) total, invoiceId
FROM InvoiceLine
GROUP BY invoiceId