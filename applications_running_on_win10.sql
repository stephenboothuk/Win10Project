use win10assetdata
go

select dbo.sw.computer_name
	, dbo.sw.application_name
	, dbo.PCs_with_win10.allocated_user
	, dbo.PCs_with_win10.User_ID
	, dbo.PCs_with_win10.state
	, dbo.PCs_with_win10.substate
from dbo.sw right outer join PCs_with_win10 
on dbo.sw.computer_name = PCs_with_Win10.asset_tag
where computer_name is not null
order by computer_name, application_name

go
