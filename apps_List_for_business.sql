use win10assetdata
go

select distinct
a.Asset_tag
, a.Most_Frequent_UID as userid
, a.Most_Frequent_User as User_Name
, a.MostFrequent_Email as User_Email
, a.Location
, d.[Post Code]
, b.application_name
, c.[Target Install Version] as Upgraded_Application
, isnull(c.[Install Type], 'TBD') as 'Category of app'
, isnull(c.Cost, '') as Cost
from hardware_readiness_B a inner join SW b on (a.Asset_tag = b.computer_name)
inner join AppsMapping c on (c.[application version name] = b.application_name)
left outer join locationDetails d on (a.Location = d.Name)
inner join Outcomes e on (a.IsItOK = e.IsItOK)
where c.[Install Status] in ('Rollout', 'On Request Only', 'License Required')
and [Show To Business]='Y'
order by a.Asset_tag, a.Location, b.application_name