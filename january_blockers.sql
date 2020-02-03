use win10assetdata
go

select a.Asset_tag
, a.PercentReadyPackaged 
, a.IsItOK
, B.application_name
, B.value WhenPackaged
, Directorate
, a.Division
, a.Section
from ReadyJAN2019 a inner join PCAppPackagestatus b on (a.Asset_tag = B.computer_name)
where a.PercentReadyPackaged < 1
and B.code <4