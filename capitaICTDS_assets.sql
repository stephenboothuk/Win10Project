use win10assetdata
go


select [Asset_tag], State, Substate, [Allocated_User], Division, Section, [Operating_System], b.mail, Model
from HW4 a
left outer join allocated_Email b on (a.[User_ID] = b.[User Name])
where Directorate = 'Capita ICTDS'
and Division not in ('Link2ICT')
order by [Allocated_User]