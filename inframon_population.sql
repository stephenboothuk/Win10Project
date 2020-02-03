use win10assetdata
go

select a.[Device Short Name], 
coalesce(b.[Application Name], ' ') as "Application Name",
coalesce(a.[In Scope to Migrate], ' ')  as "In Scope To Migrate",
coalesce(b.[Location], ' ') as "Physical site",
coalesce(b.[App Environment Type], ' ' ) as "Environment",  
coalesce(a.[Hours of Operation], ' ') as "Hours Of Operation",
coalesce(a.WAF, ' ') as "WAF?",
coalesce(a.NLB, ' ') as "NLB?",
coalesce(a.[Member of application cluster], ' ') as "Member of application cluster",
coalesce(a.SQL, ' ') as "SQL?",
coalesce(a.Comments, ' ' ) as "Comments"
from dbo.application_tagging a left outer join dbo.snow_info b
on a.[Device Short name] = b.[Server Name]