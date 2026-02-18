-- (Single Value Subqueries)

create table products
( ProductID int primary key ,
ProductName varchar(255),
Quantity int check(Quantity > 0 ),
SalesUnit int ,
City varchar(255)
)

select * from products

INSERT INTO products (ProductID, ProductName, Quantity, SalesUnit, City)
VALUES
(1, 'Laptop Dell', 12, 3, 'Vadodara'),
(2, 'Laptop HP', 10, 2, 'Ahmedabad'),
(3, 'Mobile Samsung', 25, 5, 'Vadodara'),
(4, 'Mobile iPhone', 8, 1, 'Surat'),
(5, 'Fridge LG', 6, 1, 'Vadodara'),
(6, 'Fridge Samsung', 5, 1, 'Rajkot'),
(7, 'Washing Machine IFB', 7, 2, 'Vadodara'),
(8, 'Air Conditioner Voltas', 4, 1, 'Ahmedabad'),
(9, 'Microwave Oven Panasonic', 9, 2, 'Vadodara'),
(10, 'Laptop Lenovo', 14, 4, 'Surat');

    Update products set SalesUnit = 10 where ProductID = 8

--1. Find all products that have a Quantity greater than the average quantity of all products.
	select * from products where Quantity > (select avg(Quantity) from products)
	
-- 2. Display the ProductName of products sold in the same city as 'Laptop'.
	select ProductID,ProductName,City from products where City IN (Select City from products where ProductName LIKE 'Laptop %')
	 
-- 3. Find the details of the products with the maximum Quantity.
 select * from products where Quantity = (select Max(Quantity) from products)

-- 4. List products whose salesUnit is higher than the salesUnit of ProductID 5.
	select * from products where salesUnit
	> (select salesUnit from products 
	where ProductID = 5 )

-- 5. Find products that have a lower Quantity than the minimum Quantity found in 'Vadodara'.
	 Select * from products where Quantity 
	 < (select MIN(Quantity) from products where City = 'Vadodara')

-- 6. Display products whose salesUnit is greater than the average salesUnit of products in 'Mumbai'.
	Select * from products where SalesUnit 
	 > (select avg(SalesUnit) from products where City = 'Mumbai')


-- 7. Find the product name with the lowest salesUnit.
	 select ProductName from products where SalesUnit =  (select MIN(SalesUnit) from products)

-- 8. List all products sold in cities that have more than 50 total Quantity across all their products.
	Select * from products where City IN (select City from products
	Group by City
	Having SUM(Quantity) > 50)

-- 9. Show products whose Quantity is exactly equal to the salesUnit of 'Smartphone'.
	select * from products where Quantity = (Select SalesUnit from products where ProductName = 'Smartphones')

-- 10. Find the city which has the product with the highest salesUnit.
select City from products where SalesUnit = (select MAX(SalesUnit) from products)


-- (IN, ALL, ANY & Correlated)

-- 11. Find all products sold in cities where at least one product has a Quantity of zero.
	select * from products 
	where City IN 
	(select City from products 
	where Quantity = 0)


-- 12. List products whose salesUnit is greater than the salesUnit of all products in 'Surat'.
	Select * from products where SalesUnit > ALL (Select SalesUnit from products where City = 'Surat')

-- 13. Find products that belong to cities where the average salesUnit is greater than 10.
 Select * from products
 where City IN
 (Select City from products
 Group by City
 Having Avg(SalesUnit) > 10)

-- 14.Display products that have a Quantity greater than any product's Quantity in 'Pune'.
	Select * from products where Quantity > Any (select Quantity from products where City = 'Pune')

-- 15. Find all products whose ProductName is the same as any product sold in 'Ahmedabad'.
	Select * from products where ProductName IN (select ProductName from products where City ='Ahmedabad')

-- 16. Select products where the Quantity is greater than the average Quantity of their own city.
	Select * from products p1 where Quantity > (Select AVG(Quantity) from products p2 where p2.City = p1.City)

-- 17. Find cities where the total salesUnit is higher than the total salesUnit of 'Vadodara'.
	 Select City from products 
	 Group by City
	 Having Sum(SalesUnit) > (Select SUM(SalesUnit) from products where City = 'Vadodara')

-- 18. List products that are sold in the city that has the maximum variety (count) of products.
	Select * from products where City = (Select Top 1 City from products 
	Group by City 
	Order by COUNT(*) DESC)

-- 19. Find the second highest Quantity from the Product table using a subquery.
select * from products
where Quantity =
(Select MAX(Quantity) from products 
where Quantity 
< (Select MAX(Quantity) from products) )

-- 20.Display the ProductName and a calculated column showing the difference between its Quantity and the global average Quantity.
SELECT 
    ProductName,
    Quantity - (SELECT AVG(Quantity) FROM Products) AS QuantityDifference
FROM Products
