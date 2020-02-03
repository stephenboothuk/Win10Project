use win10assetdata
go

select distinct a.Directorate
, a.Division
, a.Section
, a.Asset_tag as PreMigration_Asset_Tag
, a.Model as PreMigration_Model
, coalesce(f.[target model], 'Not Specified') as PreMigrationTargetModel
, e.Outcome
, dbo.FinalOutcome(a.FullYearsOld - 1, e.Outcome, a.Asset_tag) as FinalOutcome
, a.FullYearsOld
, a.Operating_System
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
from hardware_readiness_b a left outer join locationDetails d on (a.Location = d.Name)
inner join Outcomes e on (a.IsItOK = e.IsItOK)
left outer join TargetModel f on (a.Asset_tag = f.Asset_tag)
order by 9, 1, 2, 3, 4