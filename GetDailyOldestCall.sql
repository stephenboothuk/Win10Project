use win10assetdata
go

insert into DailyOldestCall 
select GETDATE() as Date, max(DaysOpen) as OldestOpenCall
from EngineerCallTracking
where State not in ('Resolved', 'Closed')