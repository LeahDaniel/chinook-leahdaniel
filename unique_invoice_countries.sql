-- Provide a query showing a unique (distinct) 
-- list of billing countries from the Invoice table.

SELECT invoice.billingCountry
FROM Invoice 
GROUP BY invoice.billingCountry