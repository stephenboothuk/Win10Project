use win10assetdata
go

select distinct a.[Target Install Version], a.[Install Status], c.Directorate, c.Division, c.Section
from AppsMapping a inner join SW b on (a.[application version name] = b.application_name)
inner join hardware_readiness_B c on (c.Asset_tag = b.computer_name)
where a.[Target Install Version] is not null
and a.[Target Install Version] != ''
