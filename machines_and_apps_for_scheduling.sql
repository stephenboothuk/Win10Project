use win10assetdata
go

select a.Asset_tag
, h.application_name
, a.Directorate, b.Division, a.Section
, b.Allocated_User, b.User_ID, e.Mail as AllocatedUserEmail
, b.Most_Frequent_User_Name, b.Most_Frequent_User_ID, g.Mail as MostFrequentUserEmail
, b.Last_logged_on_user_name, b.Last_Logged_On_User_ID, f.Mail as LastuserEmail
, b.Location
, b.Model_category, d.Target_Provision
, c.Outcome
, a.FullYearsOld
, b.Operating_System
from dbo.hardware_readiness_B a left outer join HW b on (a.Asset_tag = b.Asset_tag)
left outer join Outcomes c on (a.IsItOK = c.IsitOK) 
  left outer join PC_Classifications d on (a.Model = d.Model)
  left outer join allocated_email e on (e.[user name] = b.User_ID)
left outer join last_email f on (f.[user name] = b.Last_Logged_On_User_ID)
left outer join frequent_email g on (g.[user name] = b.Most_Frequent_User_ID)
left outer join SW h on (a.Asset_tag = h.computer_name)
left outer join FWAppsDetails i on (h.application_name=i.application_name)
where a.directorate = 'Capita ICTDS'
and a.Asset_tag not in (
select c.Asset_tag
from FirstWaveAutopilotMachines c
)
and i.Care=1
order by application_name, division, Section, User_ID