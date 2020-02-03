use win10assetdata
go

select a.Allocated_User
, '' as 'Current User'
, a.Asset_tag as 'Current Device'
, a.Model as 'Current Model'
, dbo.FinalOutcome(a.FullYearsOld, f.Outcome, a.Asset_tag) as 'Final Outcome 2'
, '' as Recommended
, '' as 'Additional Cost to HR'
, coalesce(g.[Target model ], a.model) as TargetModel
, a.FullYearsOld as Age
, a.IsItOK
, f.Outcome
, a.Scenario
, a.Allocated_email
, Last_user_name
, last_email
, a.Most_Frequent_User
, a.MostFrequent_Email
, a.Directorate
, a.Division
, a.Section
, a.Location
from hardware_readiness_woodbine a left outer join locationDetails b on (a.Location = b.Name)
left outer join allocated_Email c on (a.Allocated_UID = c.[User Name])
left outer join frequent_Email d on (a.Most_Frequent_UID = d.[User Name])
left outer join last_Email e on (a.last_user_id = e.[User Name])
left outer join outcomes f on (a.IsItOK = f.IsItOK)
left outer join TargetModel g on (a.Asset_tag = g.Asset_tag)
where a.Asset_tag in ('SB0066477',
'SB0091302',
'SB0077356',
'SB0065948',
'SB0009520',
'SB0009522',
'SB0009521',
'SB0009517',
'SB0009518',
'SB0009519',
'SB0061391',
'SB0061392',
'SB0090428',
'SB0009791',
'SB0069645',
'SB0074326',
'SB0009796')