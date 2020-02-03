use win10assetdata
go

select distinct hw.manufacturer, hw.model, hw.Model_category, dbo.hasBiometrics(hw.model) as HasBiometricScanner, round(hw.[Age_(Years)], 0, 1) as FullYearsOld, count(hw.asset_tag) as Num_Machines
from dbo.HW
where manufacturer not in ('Apple', 'Intellident', 'Bibliotheca')
and state='Active'
group by hw.manufacturer, hw.model, hw.Model_category, round(hw.[Age_(Years)], 0, 1)
order by HasBiometricScanner, FullYearsOld, hw.Model_category, hw.Manufacturer, hw.model 