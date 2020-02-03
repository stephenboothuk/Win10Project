use win10assetdata
go

select  coalesce(nullif(Directorate, ''),'BLANK') as Directorate
, coalesce(nullif(Division, ''),'BLANK') as Division
, coalesce(nullif(Section, ''),'BLANK') as Section
, count(asset_tag) as NumDevices
from hw
group by Directorate, Division, Section
order by Directorate, Division, Section