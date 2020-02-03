use win10assetdata
select a.[Asset_tag], a.[model_category], [isitOK], [FullYearsOld], [Most_frequent_user], b.Last_logged_on_user_name, b.Allocated_User
from dbo.hardware_readiness_B a inner join dbo.hw b on (a.Asset_tag = b.Asset_tag)
where a.[Asset_tag] in (select [computer_name]
from dbo.nonMSFW)
and isitok not in ('Missing Data')
union
select a.[Asset_tag], a.[model_category], [isitOK], [FullYearsOld], [Most_frequent_user], b.Last_logged_on_user_name, b.Allocated_User
from dbo.hardware_readiness_B a inner join dbo.hw b on (a.Asset_tag = b.Asset_tag)
where a.[Asset_tag] in (select [computer_name]
from dbo.nonMSFW)
and isitok in ('Missing Data')