use win10assetdata
go

create function isVIP(@alloc nvarchar(255), @mostuser nvarchar(255), @lastuser nvarchar(255))
returns nvarchar(255)
as
begin

declare @vipcount int;

set @vipcount = 0

select @vipcount = count(vip)
from VIPS
where [USER id] in (@alloc, @mostuser, @lastuser)

if @vipcount > 0
	return('Is VIP')
else
	return('Not VIP')

return('Shoiuldn''t get here')
end

go