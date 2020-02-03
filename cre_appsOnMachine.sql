use win10assetdata
go

create function dbo.appsOnMachine(@PmachineName nvarchar(255))
returns int
as
begin
declare @outcome int;
declare @machineName nvarchar(255);

set @machineName = @Pmachinename;

set @outcome=(select count(a.application_name) as NumApps
from dbo.sw a inner join dbo.LOB_Apps b on (a.application_name = b.application_name)
where b.care = 1
and
a.Used_count > 0
and
a.computer_name = @machineName)

return @outcome
end
go