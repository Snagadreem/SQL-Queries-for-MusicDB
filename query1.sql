SELECT DISTINCT customers.FirstName, customers.LastName
FROM customers
INNER JOIN invoices
ON customers.CustomerId = invoices.CustomerId;