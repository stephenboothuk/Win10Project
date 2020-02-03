use win10assetdata
go

select a.Asset_tag
, a.Model
, coalesce(b.Model_Class, 'No Match') as ModelClass
, coalesce(b.Target_Provision, 'No Match') as TargetProvision
, a.IsItOK
, coalesce(c.Outcome, 'No Match') as Outcome
, a.FullYearsOld
, a.Most_Frequent_User
, a.Most_Frequent_UID
, a.MostFrequent_Email
, a.Last_user_name
, a.Last_User_ID
, a.last_email
, a.Allocated_User
, a.Allocated_UID
, a.Allocated_email
, a.Directorate
, a.Division
, a.Section
, a.Location
, a.Scenario
from hardware_readiness_B a left outer join PC_Classifications b on (a.Model = b.Model)
left outer join Outcomes c on (a.IsItOK = c.IsItOK)