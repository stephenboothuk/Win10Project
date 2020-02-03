use win10assetdata
go

create function ExistingApps(@machine nvarchar(255))
returns nvarchar(max)
as
begin

declare @existingappslist nvarchar(max);

set @existingappslist = 'Existing Applications: '

select @existingappslist = @existingappslist + a.application_name + ', '
from SW a inner join FWAppsDetails b on (a.application_name = b.application_name)
where a.computer_name = @machine
and b.Care = 1

return @existingappslist
end
go

