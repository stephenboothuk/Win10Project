use win10assetdata
go


select a.Asset_tag
, a.Operating_System
, a.model_category
, a.Model
, d.Target_Provision
, a.FullYearsOld
, a.IsItOK
, c.Outcome
, b.Allocated_User
, coalesce(e.Mail, 'Not in ADDM') as AllocatedEmail
, b.Last_Logged_On_User_ID
, b.Last_logged_on_user_name
, coalesce(f.Mail, 'Not in ADDM') as LastEmail
, a.Most_Frequent_UID
, a.Most_Frequent_User
, coalesce(g.Mail, 'Not in ADDM') as MostFrequentEmail
, a.Location
, a.Directorate
, a.Division
, a.Section
from dbo.hardware_readiness_B a left outer join HW b on (a.Asset_tag = b.Asset_tag)
left outer join Outcomes c on (a.IsItOK = c.IsitOK) 
  left outer join PC_Classifications d on (a.Model = d.Model)
  left outer join allocated_email e on (e.[user name] = b.User_ID)
left outer join last_email f on (f.[user name] = b.Last_Logged_On_User_ID)
left outer join frequent_email g on (g.[user name] = b.Most_Frequent_User_ID)
where a.Asset_tag not in (
select c.Asset_tag
from FirstWaveAutopilotMachines c
)
and b.User_ID not in ('STUDENT', 'TRAINING')
