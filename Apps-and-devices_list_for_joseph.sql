use win10assetdata
go

select distinct a.Directorate
, a.Division
, a.Section
, a.Asset_tag
, a.state
, a.substate
, a.Manufacturer
, a.Model
, a.[Model Number]
, a.model_category
, coalesce(f.[target model], 'Not Specified') as TargetModel
, a.first_install_date
, a.scheduled_retirement
, a.Last_SCCM_Contact
, a.last_snow_contact
, a.cpu_type
, a.[CPU_speed_(MHz)]
, a.[RAM_(MB)]
, a.[Disk_space_(GB)]
, a.[Free_Disk_Space_(GB)]
, a.IsItOK
, e.Outcome
, dbo.FinalOutcome(a.FullYearsOld, e.Outcome, a.Asset_tag) as FinalOutcome
, a.Operating_System
, a.[OS_Address_Width_(bits)]
, a.Allocated_User
, a.Allocated_UID
, a.Allocated_email
, a.Last_user_name
, a.Last_User_ID
, a.last_email
, a.Last_logged_on_date
, a.Most_Frequent_UID as MostFrequent_userid
, a.Most_Frequent_User as MostFrequent_User_Name
, a.MostFrequent_Email as MostFrequent_User_Email
, a.Most_Freq_Last_Logged_on_Date
, a.Location
, d.[Post Code]
from hardware_readiness_woodbine a left outer join locationDetails d on (a.Location = d.Name)
inner join Outcomes e on (a.IsItOK = e.IsItOK)
left outer join TargetModel f on (a.Allocated_User = f.Asset_tag)
order by 9, 1, 2, 3, 4