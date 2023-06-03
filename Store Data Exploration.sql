use GlobalStore;

select * from Sales;

select * from Sales order by 3,4;

--select data from table that we are going to use
 select [Customer Name],City,Region,Category,[Sub-Category],Sales,Profit from Sales;

--Calculate the total sales?

select count(*) as Total_Sales from Sales;

--How many orders were placed?

select count([Order ID]) from Sales;

--What is the average quantity of products sold?
select AVG(Quantity) as avg_qty from Sales;

--What is the total profit?
select sum(Profit) as Total_profit from Sales;

--How many products were sold in each category?
select Category,count([Product Name]) as Total_Products from Sales group by Category;

-- Retrive customer name, country and region where region is Oceania
select [Customer Name],Country,Region from Sales where Region = 'Oceania';

--Which customer has made the highest purchase?

select top 1 [Customer Name],sum([Sales]) as Hig_sales from Sales group by [Customer Name] order by Hig_sales DESC;

--How many orders were shipped on the same day they were ordered?(In two ways)
--Both query will give different output

select count(*) as Total_Orders from Sales where [Order Date] = [Ship Date] ;

select count(*) as Total_Orders from Sales where [Ship Mode] = 'Same Day';

--What is the profit margin for each sub-category?
 select [Sub-Category],sum(Profit) as Profit_Margin from Sales group by [Sub-Category];



