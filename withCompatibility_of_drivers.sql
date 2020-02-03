use win10assetdata
go

select distinct a.Asset_tag
, a.Model
, b.[Compatible Drivers on Website]
, isnull(d.SCCMDriverCompatibility, 'Not in SCCM') as SCCMDriverCompatibility
, a.IsItOK, c.Outcome
, a.FullYearsOld
, dbo.FinalOutcome(a.FullYearsOld, c.Outcome, a.Asset_tag) as FinalOutcome
, dbo.scenario(a.Asset_tag) as Scenario
, a.Directorate
, a.Division
, a.Section
, a.Operating_System
from hardware_readiness_B a left outer join modelcompat b on (a.Model = b.[Device Model])
inner join Outcomes c on (a.IsItOK =  c.IsItOK)
left outer join [win10assetdata].[dbo].[SCCM_Win10'] d on (a.Asset_tag = d.asset)
order by Model, Asset_tag
