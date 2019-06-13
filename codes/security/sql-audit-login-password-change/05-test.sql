-- Session A
USE [master]
GO
ALTER LOGIN [sa] WITH PASSWORD=N'NewP@ssWord!$'
GO

ALTER LOGIN [sa] WITH PASSWORD=N'NewP@ssWord!%'
GO

-- Session B
USE [master]
GO
ALTER LOGIN [sa] WITH PASSWORD=N'NewP@ssWord!@'
GO

ALTER LOGIN [sa] WITH PASSWORD=N'NewP@ssWord!#'
GO