-- 'On Request Only',

use win10assetdata
go

drop view targetOnRequest
go


create view targetOnRequest
as
select distinct a.computer_name, b.[Target Install Version]
from sw a inner join AppsMapping b on (a.application_name = b.[application version name])
where b.[Install Status] = 'On Request Only'
go

create function OnRequestApps(@Pmachine nvarchar(255))
returns nvarchar(max)
as
begin

declare @targetappslist nvarchar(max);

set @targetappslist = 'On Request Only Applications: '

select @targetappslist = @targetappslist + b.[Target Install Version] + ', '
from  targetOnRequest b
where b.computer_name = @Pmachine

return @targetappslist
end
go