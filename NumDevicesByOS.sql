use win10assetdata
go

select coalesce(b.DedupedOS, 'Unknown') as DeDuplicatedOS
, coalesce(a.Operating_System, 'Unknown') as OperatingSystem
, COUNT(asset_tag) as NumberDevices
from hardware_readiness_B a left outer join OS_DeDupe b on (a.Operating_System = b.Operating_System)
group by b.DedupedOS, a.Operating_System
order by b.DedupedOS, a.Operating_System