use win10assetdata
go

declare @Directorate nvarchar(255) = 'Inclusive Growth '

select dbo.machinelist(d.[Target Install Version], @Directorate) DevList
from  AppsMapping d
where d.[Install Type]='Packaged SCCM'
and d.[application version name] in (
select distinct b.application_name
from SW b inner join hardware_readiness_B c on (b.computer_name = c.Asset_tag) 
where c.Asset_tag in ('SB0111257'
, 'SB0076371'
, 'SB0110989'
, 'SB0048289'
, 'SB0009591'
, 'SB0069945'
, 'SB0061261'
, 'SB0110940'
, 'SB0090561'
, 'SB0033542'
, 'SB0031365'
, 'SB0033998'
, 'SB0065811'
)
)