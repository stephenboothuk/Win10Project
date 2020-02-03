use win10assetdata
go


select a.Most_Frequent_User, a.Most_Frequent_UID, d.Mail as MostFrequentUserEmail
, a.model_category
, a.Model
, a.Asset_tag
, dbo.HasProblemApps(a.Asset_tag) as HasProblemApps
, a.Directorate, a.Division
, a.location
, dbo.FinalOutcome(a.FullYearsOld, f.Outcome, a.Asset_tag) as FinalOutcome
, coalesce(g.[Target model ], a.model) as TargetModel
from hardware_readiness_B a left outer join locationDetails b on (a.Location = b.Name)
left outer join allocated_Email c on (a.Allocated_UID = c.[User Name])
left outer join frequent_Email d on (a.Most_Frequent_UID = d.[User Name])
left outer join last_Email e on (a.last_user_id = e.[User Name])
left outer join outcomes f on (a.IsItOK = f.IsItOK)
left outer join TargetModel g on (a.Asset_tag = g.Asset_tag)
order by Directorate, Division, Location, FinalOutcome