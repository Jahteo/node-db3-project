-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT product.productName, category.categoryName
FROM product
JOIN category ON product.CategoryId = category.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select o.id, o.OrderDate, shipper.companyName
from [order] as o
join shipper ON o.shipVia = shipper.id
where o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select o.OrderId, o.ProductId, o.Quantity, product.ProductName
from orderDetail as o
join product ON o.ProductId = product.Id
where o.orderId = 10251
order by ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select o.id, customer.CompanyName, employee.LastName
from [order] as o
join customer on o.CustomerId = customer.Id
join employee on o.EmployeeId = employee.Id;