use win10assetdata
go

drop function FinalOutcome
go

create function FinalOutcome(@PFullAge float, @POutcome nvarchar(255), @PAsset_Tag nvarchar(255))
returns nvarchar(255)
as
begin

declare @ModelOutcome nvarchar(255);

if (@POutcome = 'Replace')
	return 'Replace (Spec)'

if (@PFullAge > 5)
	return 'Replace (Age)'

select @ModelOutcome = [Compatible Drivers on Website]
from ModelCompat a inner join hardware_readiness_B b on (a.[Device Model] = b.Model)
where b.Asset_tag = @PAsset_Tag

if (@ModelOutcome = 'No')
	return 'Replace (Drivers)'

return @POutcome

end
go