use win10assetdata
go

select a.application_name, b.care, b.MSFW, sum(dbo.used(Used_count)) NumUsedInstalls, count(a.computer_name) TotalInstalls
from SWDec2018 a left outer join FWAppsDetails b on (a.application_name = b.application_name)
where a.application_name not in(
select distinct application_name from SWfeb2019)
and a.application_name not like '%(Mac%'
group by a.application_name, b.care, b.MSFW
order by NumUsedInstalls desc, totalinstalls desc, application_name