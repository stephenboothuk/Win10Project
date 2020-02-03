use win10assetdata
go

select a.application_name
, d.[Target Install Version]
, d.[Install Status]
, d.[Install Type]
, d.[Cost Group]
, c.Division
, c.Section
, c.Location
, c.Asset_tag
, c.Allocated_User
, c.Allocated_email
, c.Last_user_name
, c.last_email
, c.Most_Frequent_User
, c.MostFrequent_Email
from SW a inner join hardware_readiness_B c on (a.computer_name = c.Asset_tag)
left outer join AppsMapping d on (a.application_name = d.[application version name])
where c.Directorate='Inclusive Growth'
