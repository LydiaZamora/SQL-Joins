SELECT P.Name AS ProductName, C.Name AS CategoryName
FROM products AS P
INNER JOIN categories AS C
ON C.CategoryID = P.CategoryID
Where C.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT N.Name as ProductName, P.Name as ProductPrices, R.Name as ProductRating
FROM products AS R 
ON R.Rating = 
INNER JOIN reviews as 
/* joins: find the employee with the most total quantity sold.  use thereviews sum() function and group by */

/* joins: find the name of the department, and the name of the category for Appliances and Games */

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */