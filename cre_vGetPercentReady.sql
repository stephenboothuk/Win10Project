use win10assetdata
go

create view vGetPercentReady
as
select hw.asset_tag
, concat('"', hw.Allocated_User,'"') as AllocatedUser
, concat('"', hw.Directorate,'"') as Directorate
, concat('"', hw.Division,'"') as Division
, concat('"', hw.Section,'"') as Section
, concat('"', hw.Location,'"') as Location
, round((sum(appPass.care * appPass.OK)+1)/(sum(appPass.care)+1),2) as PercentReady
from dbo.appPass inner join dbo.sw on appPass.Application = sw.application_name
inner join dbo.hw on sw.computer_name = hw.Asset_tag
where hw.Operating_System not in ('Windows 10 Enterprise', 'Windows 10 Professional')
and hw.State = 'Active'
and hw.Manufacturer not in ('Apple', 'Intellident')
group by hw.Asset_tag, hw.Allocated_User, hw.Directorate, hw.Division, hw.Section, hw.Location

go