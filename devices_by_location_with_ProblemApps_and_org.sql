use win10assetdata
go

select Asset_tag, Location, dbo.HasProblemApps(Asset_tag) as ProblemApps, Directorate, Division
from hardware_readiness_B