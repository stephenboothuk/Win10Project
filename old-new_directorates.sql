use win10assetdata
go

select  a.Directorate as NewDir, b.Directorate as oldDir, COUNT(a.asset_tag)
from hardware_readiness_B a inner join HW b on (a.Asset_tag = b.Asset_tag)
group by a.Directorate, b.Directorate
order by a.Directorate, b.Directorate