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

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
