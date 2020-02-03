use win10assetdata
select a.[Asset_tag]
, a.[model_category]
, a.[Model]
, D.[Model_Class]
, d.Target_Provision
, a.[IsItOK]
, c.Outcome
, [FullYearsOld]
, [Most_frequent_user]
, b.Most_Frequent_User_ID
, coalesce(g.mail, 'Not in ADDM') as Most_Frequent_Email
, b.Last_logged_on_user_name
, b.Last_Logged_On_User_ID
, coalesce(f.mail, 'Not in ADDM') as Last_user_Email
, b.Allocated_User
, b.User_ID as Alocated_User_ID
, coalesce(e.mail, 'Not in ADDM') as Allocated_Email
, b.Directorate
, b.division
, b.section
, b.Location
from dbo.hardware_readiness_B a inner join dbo.hw b on (a.Asset_tag = b.Asset_tag)
left outer join outcomes c on (a.IsItOK = c.IsItOK)
left outer join PC_Classifications d on (a.Model = d.Model)
left outer join allocated_email e on (e.[user name] = b.User_ID)
left outer join last_email f on (f.[user name] = b.Last_Logged_On_User_ID)
left outer join frequent_email g on (g.[user name] = b.Most_Frequent_User_ID)
where a.[Asset_tag] not in (select [computer_name]
from dbo.nonMSFW)
and b.Directorate not in ('External Organisation', 'Capita ICTDS', 'Birmingham Children''s Trust','Acivico') 
and b.User_ID is not null
and b.User_ID not in ('', 'VACANT', 'UNALLOCATED', 'STUDENT', 'STAFF', 'SHARED', 'PUBLIC')