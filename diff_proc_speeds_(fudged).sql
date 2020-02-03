use win10assetdata
go

select distinct hw.Asset_tag
, hw.Manufacturer
, hw.Model
, hw.model_category
, nullif(coalesce(hw.Operating_System , 'Unknown'), '') as Operating_System
, hw.[Disk_space_(GB)]
, hw.[Free_Disk_Space_(GB)]
, hw.[RAM_(MB)]
, hw.[CPU_speed_(MHz)]
,  round(hw.[Age_(Years)], 2) as AgeInYears
, round(round(hw.[Age_(Years)], 2), 0, 1) as FullYearsOld
, dbo.IsItOK4(hw.Model, hw.[Free_Disk_Space_(GB)], hw.[RAM_(MB)], hw.[CPU_speed_(MHz)], 100, 3000, 2100)  as IsItOK
, f.Outcome
, dbo.FinalOutcome(round(round(hw.[Age_(Years)], 2), 0, 1), f.Outcome, HW.Asset_tag) as FinalOutcome
, coalesce(hw.Directorate, 'Unknown') as Directorate
, coalesce(hw.Division, 'Unknown') as Division
, concat('"',isnull(coalesce(hw.Section, 'Unknown'), 'Unknown'), '"') as Section
, coalesce(hw.Location, 'Unknown') as Location
, coalesce(hw.Allocated_User, 'Unknown') as Allocated_User
, coalesce(hw.User_ID, 'Unknown') as Allocated_UID
, coalesce(c.mail, 'Unknown') as Allocated_email
, coalesce(hw.Most_Frequent_User_Name, 'Unknown') as Most_Frequent_User
, coalesce(hw.Most_Frequent_User_ID, 'Unknown') as Most_Frequent_UID
, coalesce(d.mail, 'Unknown') as MostFrequent_Email
, coalesce(hw.last_logged_on_user_name, 'Unknown') as Last_user_name
, coalesce(hw.Last_Logged_On_User_ID, 'Unknown') as Last_User_ID
, coalesce(e.mail, 'Unknown') as last_email
, dbo.isVIP(coalesce(hw.User_ID, 'Unknown'), coalesce(hw.Most_Frequent_User_Name, 'Unknown'), coalesce(hw.Last_Logged_On_User_ID, 'Unknown')) as VIP
, dbo.scenario(HW.asset_tag) as Scenario
from dbo.HW 
left outer join allocated_Email c on (HW.User_ID = c.[User Name])
left outer join frequent_Email d on (HW.Most_Frequent_User_ID = d.[User Name])
left outer join last_Email e on (HW.Last_Logged_On_User_ID = e.[User Name])
inner join Outcomes f on (f.IsItOK = dbo.IsItOK4(hw.Model, hw.[Free_Disk_Space_(GB)], hw.[RAM_(MB)], hw.[CPU_speed_(MHz)], 100, 3000, 2100))
where hw.State = 'Active'
and hw.Manufacturer not in ('Apple', 'Intellident', 'Bibliotheca')
and hw.Asset_tag not in (select refresh1.[Asset Number] from Refresh1)
and hw.User_ID not in ('STUDENT', 'TRAINING', 'PUBLIC', 'Tutor', 'Student', 'TUTOR')
and hw.Asset_tag not in (select hw.Asset_tag from HW
where User_ID in ('SHARED','PUBLIC') and isnull(Most_Frequent_User_Name, 'NULL') in ('Student', 'Tutor', 'PublicUser', '', 'NULL')
and Location in ('Acocks Green Library', 'Aston Academy', 'Aston Library at Aston Academy'
, 'Balsall Heath Library', 'Bartley Green Library', 'Birchfield Library', 'Boldmere Library', 'Brasshouse at Library Of Birmingham'
, 'Erdington Adult Education Centre', 'Erdington Library'
, 'Frankley Library'
, 'Glebe Farm Library'
, 'Hall Green Library', 'Handsworth Library', 'Harborne Library'
, 'Kings Heath Library', 'Kings Norton Library', 'Kingstanding Library'
, 'Library Of Birmingham'
, 'Mere Green Library'
, 'Northfield Adult Education Centre', 'Northfield Library'
, 'Perry Common Library'
, 'Quinton Library'
, 'Saltley Learning Centre', 'Shard End Library & N.O (New)', 'Sheldon Library', 'Small Heath Library', 'South Yardley Library', 'Sparkhill Library', 'Spring Hill Library', 'Stirchley Library', 'Sutton Coldfield Library'
, 'Tower Hill Library'
, 'Walmley Library', 'Ward End Library', 'Weoley Castle Library'
, 'Yardley Wood Library')
)
and hw.Asset_tag not in (select hw.Asset_tag from HW
where user_id = 'SHARED'
and isnull(Most_Frequent_User_ID, 'NULL') in ('Student', 'Tutor', 'STUDENT', 'TUTOR', '', 'NULL')
)
