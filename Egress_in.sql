use win10assetdata
go

update FWAppsDetails
set MSFW='Yes'
where application_name like 'Egress%'
