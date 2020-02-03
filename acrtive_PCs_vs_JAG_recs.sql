use win10assetdata
go

select distinct hw.Asset_tag
, hw.Manufacturer
, hw.Model
, hw.model_category
, hw.Operating_System 
, hw.[Disk_space_(GB)]
, hw.[RAM_(MB)]
,  round(hw.[Age_(Years)], 2) as AgeInYears
, round(round(hw.[Age_(Years)], 2), 0, 1) as FullYearsOld
,  IsItSixyFour.SixtyFourBit
, dbo.IsItOK3(hw.[Disk_space_(GB)], hw.[RAM_(MB)], hw.[CPU_speed_(MHz)], 500, 3000, 2000)  as IsItOK
, coalesce(hw.Directorate, 'Unknown') as Directorate
, coalesce(hw.Division, 'Unknown') as Division
, concat('"',isnull(coalesce(hw.Section, 'Unknown'), 'Unknown'), '"') as Section
, coalesce(hw.Location, 'Unknown') as Location
, coalesce(hw.Most_Frequent_User_Name, 'Unknown') as Most_Frequent_User
, coalesce(hw.Most_Frequent_User_ID, 'Unknown') as Most_Frequent_UID
from dbo.HW left outer join dbo.IsItSixyFour on hw.Model = IsItSixyFour.Model
where hw.State = 'Active'
and hw.Manufacturer not in ('Apple', 'Intellident')
and hw.Asset_tag not in (select refresh1.[Asset Number] from Refresh1)
order by AgeInYears, IsItOK, hw.[Disk_space_(GB)], hw.[RAM_(MB)]
go