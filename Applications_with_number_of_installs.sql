use win10assetdata
go

select a.application_name, b.MSFW, c.PackageCovered, d.Value, count(computer_name) NumMachines
from SW a inner join FWAppsDetails b on (a.application_name = b.application_name)
inner join LOB_Apps c on (c.application_name = a.application_name)
inner join PackagingLookup d on (d.Code = c.PackageCovered)
where b.care=1
group by a.application_name, b.MSFW, c.PackageCovered, d.Value
order by 3 desc

