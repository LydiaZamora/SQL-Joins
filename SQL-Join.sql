SELECT P.Name AS ProductName, C.Name AS CategoryName
FROM products AS P
INNER JOIN categories AS C
ON C.CategoryID = P.CategoryID
Where C.Name = 'Computers';
 
SELECT products.Name AS "Product Name", products.Price AS "Product Price" , reviews.Rating
FROM products 
INNER JOIN reviews ON reviews.ProductID = products.ProductID
WHERE rating = 5; 

SELECT e.FirstName, e.LastName, Sum(s.Quantity) AS Total
FROM sales AS s
INNER JOIN employees AS e ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 5;

SELECT d.Name as 'Department Name', c.Name as 'Category Name'
FROM departments as d 
INNER JOIN categories as c on c.DepartmentID = d.DepartmentID
WHERE c.name = 'Appliances' or c.name = 'Games';

 SELECT p.Name as 'Product Name', Sum(s.quantity) as 'Total Sold', Sum(s.PricePerUnit * s.Quantity) as 'Total Price'
 FROM products as p
 INNER JOIN Sales as s on s.ProductID = p.ProductID
 WHERE p.ProductID = 97;

SELECT p.Name as 'Product Name', r.reviewer as 'Reviewer Name', r.rating as 'Rating' , r.Comment as 'Comment'
FROM reviews as r
INNER JOIN products as p on p.ProductID = r.ProductID
WHERE p.ProductID = 857 AND r.rating = 1;

SELECT e.employeeID as 'Employee ID', e.FirstName as 'First Name', e.LastName as 'Last Name', 
p.Name as 'Product Name', SUM(s.Quantity) as 'Total Sold'
FROM sales as s 
INNER JOIN employees as e on e.employeeID = s.employeeID
INNER JOIN products as p on p.productID = s.productID
GROUP BY e.employeeID, p.productID 
ORDER BY e.FirstName;

