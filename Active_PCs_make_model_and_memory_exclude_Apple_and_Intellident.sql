use win10assetdata
go

select hw.manufacturer, hw.Model, hw.[RAM_(MB)], hw.Operating_System, hw.State, hw.Substate, count(asset_tag) as number_of_machines
from dbo.hw
where state = 'Active'
and
manufacturer not in ('Apple', 'Intellident')
group by hw.manufacturer, hw.Model, hw.[RAM_(MB)], hw.Operating_System, hw.State, hw.Substate
order by hw.manufacturer, hw.Model, hw.[RAM_(MB)], hw.Operating_System, hw.State, hw.Substate
