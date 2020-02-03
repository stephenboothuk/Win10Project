use win10assetdata
go

select a.manufacturer_name, a.application_name, b.MSFW, b.care, b.PackageCovered, c.Value, sum(dbo.used(a.Used_count)) as used_installs
from SW a left outer join FWAppsDetails b on (a.application_name = b.application_name)
left outer join PackagingLookup c on (b.PackageCovered = c.Code)
where computer_name in (select a.[Asset_tag]
from FirstWaveAutoPilotMachines a)
group by a.manufacturer_name, a.application_name, b.MSFW, b.care, b.PackageCovered, c.Value