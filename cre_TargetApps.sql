use win10assetdata
go

create function TargetApps(@Pmachine nvarchar(255))
returns nvarchar(max)
as
begin

declare @targetappslist nvarchar(max);

set @targetappslist = 'Target Applications: '

select @targetappslist = @targetappslist + b.[Target Install Version] + ', '
from map_machine_to_target b
where b.computer_name = @Pmachine

return @targetappslist
end
go
