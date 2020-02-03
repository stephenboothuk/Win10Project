USE [win10assetdata]
GO

/****** Object:  UserDefinedFunction [dbo].[machineList]    Script Date: 04/03/2019 11:47:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


create function [dbo].[machineList] (@PAppname nvarchar(255), @PDirectorate nvarchar(255))
returns nvarchar(max)
as
begin
declare @devices nvarchar(max);

set @devices = @PAppname

select @devices = @devices + ', ' + a.computer_name
from SW a 
inner join hardware_readiness_B c on (c.Asset_tag = a.computer_name)
where a.application_name = @PAppname
and c.Directorate = @PDirectorate


return @devices
end
GO


