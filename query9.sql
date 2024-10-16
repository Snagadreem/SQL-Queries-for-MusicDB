WITH tempTable AS (
	SELECT c.CustomerId,
		c.FirstName,
		c.LastName,
		SUM(invoice_items.Quantity) AS TotalItemsPurchased,
		RANK() OVER (ORDER BY SUM(invoice_items.Quantity) DESC) AS PurchaserRank
	FROM customers c
	JOIN invoices ON c.CustomerId = invoices.CustomerId
	JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
	GROUP BY c.CustomerId)
SELECT CustomerId, FirstName, LastName, TotalItemsPurchased, PurchaserRank
FROM tempTable
ORDER BY PurchaserRank;
