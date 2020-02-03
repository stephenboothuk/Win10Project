use win10assetdata
go

select a.Asset_tag, dbo.ExistingApps(a.asset_tag) as ExistingApplications
, dbo.TargetApps(a.Asset_tag) as TargetApplications
, dbo.OnRequestApps(a.asset_tag)  as OnRequestOnly
, a.Directorate
, a.Division
, a.Section
from hardware_readiness_B a
where a.Asset_tag in ('SB0009427'
, 'SB0009525'
, 'SB0009592'
, 'SB0009867'
, 'SB0010521'
, 'SB0033456'
, 'SB0048351'
, 'SB0065811'
, 'SB0066285'
, 'SB0069624'
, 'SB0090196'
, 'SB0091924'
, 'SB0111003'
, 'SB0111004')