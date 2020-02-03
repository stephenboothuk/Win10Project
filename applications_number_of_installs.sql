use win10assetdata
go

select distinct a.application_name, a.MSFW, a.Care, sum(win10assetdata.dbo.used(b.Used_count)) as NumUsedInstalls
from dbo.LOB_Apps a inner join dbo.sw b on (a.application_name = b.application_name)
group by a.application_name, a.MSFW, a.Care
order by a.application_name