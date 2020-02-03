use win10assetdata

select a.application_name
, a.Care
, a.MSFW
, count(b.computer_name) as NumInstalls
from dbo.LOB_Apps a inner join dbo.SW b on (a.application_name = b.application_name)
where a.care = 1 and a.MSFW = 'No'
group by a.application_name, a.Care, a.MSFW
order by NumInstalls desc
