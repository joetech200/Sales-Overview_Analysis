-- Cleansed Dim_customer Table --

SELECT 
  c.CustomerKey AS Customerkey 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  ,c.firstname AS [FirstName] 
  --,[MiddleName]
  ,c.lastname AS [LastName]
  ,c.firstname + ' ' + LastName AS Fullname 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  ,case c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  ,c.DateFirstPurchase AS DateFirstPurchase
  --,[CommuteDistance]
  ,g.city AS [customer city] -- Joined in customer city from Geography Table 
FROM 
  dbo.DimCustomer AS c 
  left join dbo.DimGeography AS g ON g.GeographyKey = c.geographykey 
ORDER BY 
  Customerkey ASC -- Order list by Customerkey

