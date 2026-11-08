USE DecodeLabs_Ecommerce;
select*
from [Dataset for Data Analytics(Sheet1)];

Select OrderID, Date, Product, Quantity, Unitprice, TotalPrice
From [Dataset for Data Analytics(Sheet1)];

Select OrderID, Date, Product, Quantity, Unitprice, TotalPrice
From [Dataset for Data Analytics(Sheet1)]
where product ='chair';

Select OrderID, Date, Product, Quantity, Unitprice, TotalPrice
From [Dataset for Data Analytics(Sheet1)]
Order by Totalprice DESC;

SELECT PRODUCT,
SUM(Totalprice) AS Totalrevenue
From [Dataset for Data Analytics(Sheet1)]
group by PRODUCT
Order by Totalrevenue DESC;

SELECT Count(OrderID) AS TotalOrders
from [Dataset for Data Analytics(Sheet1)];

SELECT SUM(Totalprice) AS Overalltotalrevenue
from [Dataset for Data Analytics(Sheet1)]


SELECT Avg(Totalprice) AS Overallaverage
from [Dataset for Data Analytics(Sheet1)]


select orderstatus,
count(orderID) AS Numberoforders
from [Dataset for Data Analytics(Sheet1)]
group by orderstatus
order by numberoforders DESC;

select paymentmethod,
count(orderID) AS Ordersbypayment
from [Dataset for Data Analytics(Sheet1)]
group by paymentmethod
order by Ordersbypayment DESC;

select Referralsource,
count(orderID) AS Numberofreferralsources
from [Dataset for Data Analytics(Sheet1)]
group by Referralsource
order by Numberofreferralsources DESC;

select CustomerID,
count(orderID) AS Ordersbycustomer
from [Dataset for Data Analytics(Sheet1)]
group by CustomerID
order by Ordersbycustomer DESC;

select TOP 10 CustomerID,
count(orderID) AS Ordersbycustomer
from [Dataset for Data Analytics(Sheet1)]
group by CustomerID
order by Ordersbycustomer DESC;


SELECT
    CustomerID,
    COUNT(OrderID) AS Ordersbycustomer
FROM [Dataset for Data Analytics(Sheet1)]
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1
ORDER BY Ordersbycustomer DESC;


SELECT
    CustomerID,
    COUNT(OrderID) AS Ordersbycustomer
FROM [Dataset for Data Analytics(Sheet1)]
GROUP BY CustomerID
HAVING COUNT(OrderID) <2
ORDER BY Ordersbycustomer DESC;

