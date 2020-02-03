use win10assetdata
go

drop view [dbo].[map_machine_to_target]
go

create view map_machine_to_target
as
select distinct a.computer_name, b.[Target Install Version]
from sw a inner join AppsMapping b on (a.application_name = b.[application version name])
where b.[Install Status] in ('Rollout', 'License Required' )
go