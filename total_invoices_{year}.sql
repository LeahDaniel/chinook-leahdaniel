-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(*) totalInvoices, strftime('%Y', i.InvoiceDate) year
FROM Invoice i 
WHERE year LIKE "2009" OR year LIKE "2011"
GROUP BY year

-- Or, to just get a total count and no other info

SELECT COUNT(*) totalInvoices
FROM Invoice 
WHERE InvoiceDate LIKE "2009%" OR InvoiceDate LIKE "2011%"