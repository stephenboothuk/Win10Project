use win10assetdata
go


select distinct manufacturer_name,  application_name
from SW
where application_name not in (
select [application version name]
from AppsMapping)
order by application_name