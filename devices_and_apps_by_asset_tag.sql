use win10assetdata
go

select Asset_tag, Allocated_User, b.application_name, c.[Target Install Version]
from hardware_readiness_B a inner join SW b on (a.Asset_tag = b.computer_name)
inner join AppsMapping c on (b.application_name = c.[application version name])
where [Install Type]='Packaged SCCM'
and Asset_tag in ('SB0067372'
, 'SB0073080'
, 'SB0073078'
, 'SB0066692'
, 'SB0074005'
, 'SB0066325'
, 'SB0031366'
, 'SB0045962'
, 'SB0048069'
, 'SB0033458'
, 'SB0090529'
, 'SB0090782'
, 'SB0033752'
, 'SB0090809'
, 'SB0009888'
, 'SB0091020'
, 'SB0033959'
, 'SB0091123'
, 'SB0091476'
, 'SB0091444'
, 'SB0110271'
, 'SB0110269')
