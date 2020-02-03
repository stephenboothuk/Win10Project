use win10assetdata
go

select application_name, [dbo].[directroates_applications](application_name) as Directorates
from SW
group by application_name