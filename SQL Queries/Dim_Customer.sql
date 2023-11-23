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
