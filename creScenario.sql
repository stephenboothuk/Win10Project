USE [win10assetdata]
GO

/****** Object:  UserDefinedFunction [dbo].[scenario]    Script Date: 11/02/2019 14:23:25 ******/
DROP FUNCTION [dbo].[scenario]
GO

/****** Object:  UserDefinedFunction [dbo].[scenario]    Script Date: 11/02/2019 14:23:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create function [dbo].[scenario] (@PMachineName nvarchar(255))
returns nvarchar(255)
as
begin
declare @outcome int;
declare @machinename nvarchar(255);

set @machinename = @PMachineName;

set @outcome = 0;

set @outcome = ( select count(asset_tag) as NumPCs 
from FirstWaveAutoPilotMachines where Asset_tag = @machinename );
if (@outcome = 0)
	return('Two')

return('One');
end
GO


