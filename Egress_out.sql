use win10assetdata
go

update FWAppsDetails
set MSFW='No'
where application_name like 'Egress%'