Use win10assetdata
go

select distinct a.application_name, b.Care, b.MSFW
from dbo.sw a inner join LOB_Apps b on (a.application_name = b.application_name)
where computer_name in (select Asset_tag
from FirstWaveAutoPilotMachines)
and b.Care = 1