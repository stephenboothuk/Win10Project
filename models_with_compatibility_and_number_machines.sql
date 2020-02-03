use win10assetdata
go

select a.Model, b.[Compatible Drivers on website], isnull(b.Info, '') as Info, COUNT(a.Asset_tag) as NumMachines
from hardware_readiness_B a left outer join ModelCompat b on (a.Model = b.[Device Model])
group by Model, b.[Compatible Drivers on website], b.Info