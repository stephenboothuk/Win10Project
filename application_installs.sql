use win10assetdata
go

select dbo.sw.manufacturer_name, dbo.sw.application_name, count(dbo.sw.computer_name) as number_installs_detected
from dbo.sw
group by dbo.sw.manufacturer_name, dbo.sw.application_name
order by number_installs_detected desc, dbo.sw.manufacturer_name, dbo.sw.application_name