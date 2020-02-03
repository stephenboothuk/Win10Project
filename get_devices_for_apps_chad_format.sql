use win10assetdata
go

declare @Directorate nvarchar(255) = 'Adults Social Care '

select dbo.machinelist(d.[Target Install Version], @Directorate) DevList
from  AppsMapping d
where d.[Install Type]='Packaged SCCM'
and d.[application version name] in (
select distinct b.application_name
from SW b inner join hardware_readiness_B c on (b.computer_name = c.Asset_tag) 
where c.Directorate = @Directorate)