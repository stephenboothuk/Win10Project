use win10assetdata
go

select a.Allocated_User, a.Allocated_UID, c.Mail as AllocatedUserEmail
, a.Most_Frequent_User, a.Most_Frequent_UID, d.Mail as MostFrequentUserEmail
, a.last_user_name, a.last_user_ID, e.Mail as LastUserEmail
, a.Directorate, a.Division, a.Section
, a.Location, b.[Post Code]
, a.IsItOK
, f.Outcome
, '' as Upgradestatus
, a.FullYearsOld
, dbo.FinalOutcome(a.FullYearsOld, f.Outcome, a.Asset_tag) as FinalOutcome
, a.Asset_tag
, '' as NewMachineID
, a.model_category
, a.Model
, a.Operating_System
from hardware_readiness_B a left outer join locationDetails b on (a.Location = b.Name)
left outer join allocated_Email c on (a.Allocated_UID = c.[User Name])
left outer join frequent_Email d on (a.Most_Frequent_UID = d.[User Name])
left outer join last_Email e on (a.last_user_id = e.[User Name])
left outer join outcomes f on (a.IsItOK = f.IsItOK)
where a.Asset_tag in ('SB0069285'
, 'Sb0073312') 