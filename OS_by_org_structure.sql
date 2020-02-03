use win10assetdata
go


select coalesce(a.Operating_System, 'Unknown') as OS, c.DEdupedOS , Directorate, Division, COUNT(asset_tag) as NumDevices
from hardware_readiness_B a 
inner join OS_dedupe c on (coalesce(a.Operating_System, 'Unknown') = c.operating_system)
group by a.Operating_System, c.dedupedOS, Directorate, Division
order by Directorate, Division, dedupedOS, OS