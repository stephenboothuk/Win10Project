use win10assetdata
go

select distinct c.Directorate 
, d.[Target Install Version]
, d.[Show To Business]
, d.[Install Status]
, f.Care
, f.MSFW
from SW a inner join HW c on (a.computer_name = c.Asset_tag)
inner join AppsMapping d on (a.application_name = d.[application version name])
left outer join FWAppsDetails f on (f.application_name = a.application_name)
where d.[Target Install Version] is not null
order by d.[Target Install Version], c.Directorate
