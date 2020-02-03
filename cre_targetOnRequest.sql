USE [win10assetdata]
GO

/****** Object:  View [dbo].[targetOnRequest]    Script Date: 19/03/2019 18:29:12 ******/
DROP VIEW [dbo].[targetOnRequest]
GO

/****** Object:  View [dbo].[targetOnRequest]    Script Date: 19/03/2019 18:29:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



create view [dbo].[targetOnRequest]
as
select distinct a.computer_name, b.[Target Install Version]
from sw a inner join AppsMapping b on (a.application_name = b.[application version name])
where b.[Install Status] = 'On Request Only'
GO


