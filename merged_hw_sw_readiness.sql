use win10assetdata
go

select hwr.asset_tag
, hwr.manufacturer, hwr.model, hwr.model_category
, hwr.operating_system
, hwr.[Disk_Space_(GB)], hwr.[RAM_(MB)], hwr.[CPU_Speed_(MHz)], hwr.[Free_Disk_Space_(GB)], hwr.SixtyFourBit
, hwr.AgeInYears, hwr.FullYearsOld
, srr.directorate, srr.division, srr.section
, srr.Location
, srr.AllocatedUser, hwr.Most_Frequent_user, hwr.Most_Frequent_UID
, hwr.IsItOK
, srr.PercentReady
from dbo.hardware_readiness hwr inner join software_readiness srr on hwr.asset_tag = srr.asset_tag;
