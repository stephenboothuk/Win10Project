use win10assetdata
go

select distinct hw.Asset_tag,  round(round(hw.[Age_(Years)], 2), 0, 1) as FullYearsOld,  coalesce(IsItSixyFour.SixtyFourBit, 'Unknown') as SixtyFourBit, dbo.IsItOK2(hw.[Disk_space_(GB)], hw.[RAM_(MB)], 120, 3000)  as IsItOK, sw.application_name
from dbo.HW left outer join dbo.IsItSixyFour on hw.Model = IsItSixyFour.Model
left outer join dbo.SW on hw.Asset_tag = sw.computer_name
where hw.State = 'Active'
and hw.Manufacturer not in ('Apple', 'Intellident')
and sw.application_name is not null
and hw.Asset_tag not in (select refresh1.[Asset Number] from Refresh1)
order by FullYearsOld desc,  IsItOK, sw.application_name, hw.Asset_tag
go