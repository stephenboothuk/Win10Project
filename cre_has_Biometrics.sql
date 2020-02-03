use win10assetdata
go

create function hasBiometrics(@model nvarchar(255))
returns nvarchar(4)
as
begin

declare @RetValue nvarchar(4);

set @RetValue =
case
	when @model = 'Lenovo ThinkPad L470' then 'Yes'
	when @model = 'Lenovo ThinkPad L570' then 'Yes'
	when @model = 'Lenovo ThinkPad T470' then 'Yes'
	when @model = 'Lenovo Thinkpad X270' then 'Yes'
	else 'No'

end;

return @RetValue;

end