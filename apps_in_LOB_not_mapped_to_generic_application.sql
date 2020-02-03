select a.manufacturer_name
, isnull(c.[application name], '') as application_name
, a.application_name
, a.MSFW
, a.Care
, SUM(dbo.used(Used_count)) as NumUsedInstalls
, isnull(c.[license required], '') as license_required
, isnull(c.application_used_installs, '') as application_used_installs
, a.PackageCovered
from dbo.LOB_Apps a inner join sw b on (a.application_name = b.application_name) left join dbo.maptoapp c on (a.application_name = c.[application version name])
where c.[application name] is null
group by a.manufacturer_name
, c.[application name]
, a.application_name
, a.MSFW
, a.Care
, c.[license required]
, c.application_used_installs
, a.PackageCovered
order by a.manufacturer_name