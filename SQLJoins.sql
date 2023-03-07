/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT p.name, c.name 
 FROM products AS p
 INNER JOIN categories AS c
ON c.CategoryID = p.CategoryID
WHERE c.Name = 'Computers'; 
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT p.name, p.price, r.rating
 FROM products AS p
 INNER JOIN reviews AS r
 WHERE rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT FirstName, LastName, sum(s.Quantity) AS total
FROM employees AS e INNER JOIN sales AS s
on e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY total DESC
LIMIT 1;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name, c.Name 
FROM departments AS d
INNER JOIN categories AS c
ON c.DepartmentID = d.DepartmentID
WHERE c.Name = 'appliances' OR c.Name = 'games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, SUM(s.Quantity) AS 'Total Quantity', SUM(s.Quantity * s.PricePerUnit) AS 'Total Price'
FROM products AS p INNER JOIN sales AS s 
ON p.ProductID = s.ProductID
WHERE p.name = 'Eagles: Hotel California';


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.name, r.reviewer, r.rating, r.comment 
FROM products AS p INNER JOIN reviews AS r
ON p.ProductID = r.ProductID
WHERE p.name = 'Visio TV'
ORDER BY r.Rating ASC
LIMIT 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */