use win10assetdata
go

select a.application_name, b.MSFW, count(a.application_name) as NumInstalls
from sw a inner join FWAppsDetails b on (a.application_name = b.application_name)
where b.care=1
and b.MSFW='No'
group by a.application_name, b.MSFW
order by NumInstalls desc
