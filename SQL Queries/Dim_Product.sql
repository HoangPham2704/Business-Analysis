--Cleanse DimProduct--
SELECT 
  Pd.[ProductKey], 
  Pd.[ProductAlternateKey] AS [Product Code], 
  --[ProductSubcategoryKey]
  --[WeightUnitMeasureCode]
  --[SizeUnitMeasureCode]
  Pd.[EnglishProductName] AS [Product Name], 
  Ps.[EnglishProductSubcategoryName] AS [Sub Category], --Joined in from Subcategiry Table
  Pc.[EnglishProductCategoryName] AS [Product Category], --Joined in from Category Table
  --[SpanishProductName]
  --[FrenchProductName]
  --[StandardCost]
  --[FinishedGoodsFlag]
  Pd.[Color] AS [Product Color], 
  --[SafetyStockLevel]
  --[ReorderPoint]
  --[ListPrice]
  Pd.[Size] AS [Product Size], 
  --[SizeRange]
  --[Weight]
  --[DaysToManufacture]
  Pd.[ProductLine] AS [Product Line], 
  --[DealerPrice]
  --[Class]
  --[Style]
  Pd.[ModelName] AS [Product Model Name], 
  --[LargePhoto]
  Pd.[EnglishDescription] AS [Product Description], 
  --[FrenchDescription]
  --[ChineseDescription]
  --[ArabicDescription]
  --[HebrewDescription]
  --[ThaiDescription]
  --[GermanDescription]
  --[JapaneseDescription]
  --[TurkishDescription]
  --[StartDate]
  --[EndDate]
  --pd.[Status]
  isnull (Pd.[Status], 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS Pd 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS Ps ON Pd.ProductSubcategoryKey = Ps.ProductSubcategoryKey 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS Pc ON Ps.ProductCategoryKey = Pc.ProductCategoryKey 
ORDER BY 
  Pd.[ProductKey] ASC