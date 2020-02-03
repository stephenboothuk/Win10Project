use win10assetdata
go

select b.application_name, a.Directorate, c.Care, c.MSFW, c.PackageCovered, d.value as WhenPackaged, count(dbo.used(b.used_count)) as NumberUsedInstalls
from HW2 a inner join SWfeb2019 b on (a.[Asset tag] = b.computer_name)
left outer join FWAppsDetails c on (b.application_name = c.application_name)
left outer join PackagingLookup d on (c.PackageCovered = d.Code)
where a.State in ('ACTIVE', 'Active')
and a.Manufacturer not in ('Apple', 'Intellident', 'Bibliotheca')
group by b.application_name, a.Directorate, c.Care, c.MSFW, c.PackageCovered, d.value
order by b.application_name, a.Directorate, NumberUsedInstalls 