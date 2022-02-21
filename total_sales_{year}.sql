-- What are the respective total sales for each of those years?


SELECT strftime('%Y', i.InvoiceDate) year, SUM(i.total) totalSales
FROM Invoice i 
WHERE year LIKE "2009" OR year LIKE "2011"
GROUP BY year

-- Or, to just get a total sum and no other info

SELECT SUM(total) totalSales
FROM Invoice 
WHERE InvoiceDate LIKE "2009%" OR InvoiceDate LIKE "2011%"