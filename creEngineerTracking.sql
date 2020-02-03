use win10assetdata
go

create view [dbo].[EngineerTracking]
as
select coalesce(a.Reference, b.reference) as CallReference,
coalesce(a.Opened, b.opened) as OpenedDate,
coalesce(a.[Resolved at], b.[Resolved at]) as ResolvedDate,
coalesce(a.Owner, b.owner) as Engineer,
coalesce(a.Priority, b.priority) as CallPriority,
coalesce(b.Updated, a.updated) as LastUpdatedDate,
coalesce(b.updates, a.updates) as NumberUpdates
from EngCallsRaised a full outer join EngCallsResolved b on (a.Reference = b.Reference);
go