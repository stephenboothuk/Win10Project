select a.Asset_tag, round(a.[Age_(Years)], 0) as Full_Years_Old, a.Model_category
from HW a inner join dbo.apps_usage b on (a.Asset_tag = b.computer_name)
where Operating_System in ('Windows 10 Enterprise', 'Windows 10 Professional')
and
b.total_usage > 0
order by Full_Years_Old, Model_category