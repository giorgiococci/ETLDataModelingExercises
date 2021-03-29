USE [AdventureWorks2017]
GO
/****** Object:  StoredProcedure [dbo].[SalesTerritoryQualityCheck]    Script Date: 26/03/2021 11:49:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SalesTerritoryQualityCheck] 
	@program varchar(10)
as
begin

	delete from [Sales].[SalesTerritory]
	where [CountryRegionCode] = 'IT'
	and [Name] in ('Molise')

end