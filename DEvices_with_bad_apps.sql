use win10assetdata
go

select distinct a.computer_name, d.Allocated_User, d.Allocated_UID, d.Directorate, d.Division, a.application_name
from SW a inner join isAppProblem c on ( a.application_name = c.[application version name])
inner join hardware_readiness_B d on (a.computer_name = d.Asset_tag)
where ProblemApp='Y'
order by Directorate, Division, Allocated_User, computer_name, a.[application_name]