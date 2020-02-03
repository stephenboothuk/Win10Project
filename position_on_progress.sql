use win10assetdata
go

select a.Asset_tag, a.Directorate, a.Division, a.Section, coalesce(c.DedupedOS, 'Unknown') as OperatingSystem
from hardware_readiness_B a left join OS_DeDupe c on (a.Operating_System = c.Operating_System)
order by a.Directorate, a.Division, a.Section, c.DedupedOS