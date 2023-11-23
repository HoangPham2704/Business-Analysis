# Business Analysis
Business Demand:

1. Need to improve our **internet sales reports** and move from static reports to **visual dashboards**.
2. Identify **How many products have been sold, what are those products,** to **which clients**, and **how sales have performed over time**.
3. See each **sales person performance** on different products and customers to see if it would be beneficial to be able to filter them.
4. Measure our numbers against **budget** in spreadsheet to compare our values to the performance.
5. The budget is for 2021 and we usually look 2 years back in time when we do analysis of sales.

Business Demand Overview:

- Reporter: Sales Manager
- Value of Change: Visual Dashboards and Improved Sales Reporting or Follow up for the Sales Force
- Necessary Systems: Power BI, CRM System
- Other relevant info: Budgets will be delivered in Excel for 2021

User Stories:

| No #  | Role | Request / Demand  | User Value | Acceptance Criteria |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| 1  | Sales Manager | A Dashboard overview of Internet Sales | Can follow better which customers and products sells the best | A Power BI dashboard which updates data once a day  |
| 2  | Sales Representative | A detailed overview of Internet Sales per Customers  | Can follow up my customers that buys the most | A Power BI dashboard which allows to filter data for each customer |
| 3  | Sales Representative | A detailed overview of Internet Sales per Products | Can follow up my Products that sells the most | A Power BI dashboard which allows to filter data for each Product |
| 4  | Sales Manager | A detailed overview of Internet Sales | Follow Sales over time against budget | A Power BI dashboard with graphs and KPIs comparing against budget. |


```
--Cleanse DimCustomer Table--
SELECT 
  c.[CustomerKey], 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.[FirstName], 
  --[MiddleName]
  c.[LastName], 
  c.[FirstName] + ' ' + c.[LastName] as [Fullname], 
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  --[Gender]
  CASE c.[Gender] When 'M' Then 'Male' When 'F' Then 'Female' End as [Gender], 
  --[EmailAddress]
  --[YearlyIncome]
  --[TotalChildren]
  --[NumberChildrenAtHome]
  --[EnglishEducation]
  --[SpanishEducation]
  --[FrenchEducation]
  --[EnglishOccupation]
  --[SpanishOccupation]
  --[FrenchOccupation]
  --[HouseOwnerFlag]
  --[NumberCarsOwned]
  --[AddressLine1]
  --[AddressLine2]
  --[Phone]
  c.[DateFirstPurchase], 
  --[CommuteDistance]
  g.[City] -- Joined in Customer City from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] As c 
  Left join [AdventureWorksDW2019].[dbo].[DimGeography] as g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  CustomerKey ASC --Ordered List by CustomerKey
```
