use GlobalStore;

select * from Sales;


--Removing duplicate records:

select [Row ID] from Sales where [Row ID] not in (select [Row ID] from Sales);

select count([Row ID]) from Sales;

select count(distinct [Row ID]) from Sales;

select [Order ID] ,count([Order ID]) as countt from Sales group by [Order ID] having count([Order ID]) > 1


--Handling missing values:

select count(*) from Sales where [Postal Code] is null;

--we can delete that row because its not require for analysis

alter table Sales 
drop column [Postal Code];

--changing the data format for columns

update Sales set [Sales] = FORMAT([Sales],'0.00')

update Sales set [Profit] = FORMAT([Profit],'0.00')

update Sales set Discount = FORMAT(Discount,'0.00')

Alter table Sales alter column [Row ID] int


--Add new columns to cnvert varchar data type to date data type

Alter table Sales Add Order_Date date;
Alter table Sales Add Ship_Date date;


update Sales set Order_Date = CONVERT(date,[Order Date],103)

update Sales set Ship_Date = CONVERT(date,[Ship Date],103)

--drop thye previous columns with wrong data type

ALTER TABLE Sales drop column [Order Date]

ALTER TABLE Sales drop column [Ship Date]










