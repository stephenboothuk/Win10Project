USE [win10assetdata]
GO

select a.Allocated_User
, a.Allocated_UID
, a.Allocated_email
, Most_Frequent_User
, Most_Frequent_UID
, MostFrequent_Email
, Last_user_name
, Last_User_ID
, last_email
, a.Directorate
, a.Division
, a.Section
, a.Location
, c.[Post Code]
, a.IsItOK
, b.Outcome
, a.FullYearsOld
, dbo.FinalOutcome(a.FullYearsOld, b.Outcome, a.Asset_tag) as FinalOutcome
, a.Asset_tag
, a.model_category
, a.Operating_System
from hardware_readiness_B a left outer join Outcomes b on (a.IsItOK = b.IsItOK)
left outer join locationDetails c on (a.Location = c.Name)
where dbo.FinalOutcome(a.FullYearsOld, b.Outcome, a.Asset_tag) like 'Replace%'
order by Operating_System