/*
Question 1: What is the name of the table that holds the items Northwind sells? 
(Answer: Products)
*/
SELECT *
FROM
	products;

/*
Question 2: Write a query to list the product id, product name, and unit price of every
product.
*/
SELECT
	productid,
    productname,
    unitprice
FROM 
	products;
    
/*
Question 3: Write a query to list the product id, product name, and unit price of every
product. Except this time, order then in ascending order by price.
*/
SELECT
	productid,
    productname,
    unitprice
FROM 
	products
ORDER BY 
	unitprice ASC;
/*
Question 4: What are the products that we carry where the unit price is $7.50 or less? 
*/
SELECT *
FROM 
	products
WHERE
	unitprice <= 7.50
ORDER BY 
	unitprice ASC;

/*
Question 5: WWhat are the products that we carry where we have at least 100 units on hand?
Order them in descending order by price.
*/
SELECT *
FROM 
	products
WHERE
	UnitsInStock >= 100
ORDER BY
	unitprice DESC; 

/*
Question 6: What are the products that we carry where we have at least 100 units on hand?
Order them in descending order by price. If two or more have the same price, list
those in ascending order by product name.
*/
SELECT *
FROM 
	products
WHERE
	UnitsInStock >= 100
ORDER BY
	unitprice DESC, ProductName ASC;


/*
Question 7: What are the products that we carry where we have no units on hand, but 1 or
more units of them on backorder? Order them by product name.
*/
SELECT *
FROM 
	products
WHERE 
	UnitsInStock = 0 AND
	UnitsOnOrder >= 1;

    
/*
Question 8: What is the name of the table that holds the types (categories) of the items
Northwind sells? 
(Answer: Categories)
*/
SELECT *
FROM 
	Categories;

    
/*
Question 9: Write a query that lists all of the columns and all the rows of the categories table?
What is the category id of seafood? 
(Answer: Seafood is Category 8)
*/
SELECT *
FROM 
	Categories;
    
/*
Question 10: Examine the Products table. How does it identify the type (category) of each item
sold? Write a query to list all of the seafood items we carry. 
(Answer: It has a column called Category ID where you can input the ID of the correct catergory)
*/
SELECT *
FROM 
	Products
WHERE 
	CategoryID = 8;


/*
Question 11: What are the first and last names of all of the Northwind employees?
*/
SELECT FirstName, LastName
FROM 
	Employees;

    
/*
Question 12:  What employees have "manager" in their titles?
*/
SELECT *
FROM 
	Employees
	WHERE Title LIKE '%manager%';
    
/*
Question 13: List the distinct job titles in employees.
*/
SELECT 
	DISTINCT Title
FROM 
	Employees;
    
/*
Question 14: What employees have a salary that is between $200 0 and $2500?
*/
SELECT *
FROM 
	Employees
WHERE
	Salary BETWEEN 2000 AND 2500;

    
/*
Question 15: List all the information about all of Northwind's suppliers.
*/
SELECT *
FROM
	Suppliers; 
    
/*
Question 16: Examine the Products table. How do you know what supplier supplies each
product? Write a query to list all the items that "Tokyo Traders" supplies to
Northwind
*/
SELECT *
FROM 
	Products
WHERE 
	SupplierID = 4;
    