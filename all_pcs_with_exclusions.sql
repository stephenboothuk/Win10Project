Use win10assetdata
go


SELECT [Asset_tag]
,[FullYearsOld]
,a.[IsItOK]
, c.Outcome
      ,[Manufacturer]
      ,a.[Model]
      ,d.[Model_category]
	  ,d.[Model_Class]
	  , d.Target_Provision
      ,[Operating_System]
      ,[Disk_space_(GB)]
      ,[Free_Disk_Space_(GB)]
      ,[RAM_(MB)]
      ,[CPU_speed_(MHz)]
      ,[AgeInYears]      
      ,[SixtyFourBit]      
      ,[Directorate]
      ,[Division]
      ,[Section]
      ,[Location]
	  ,[Allocated_User]
	  ,[Allocated_UID]
	  , coalesce(e.Mail, 'Not in ADDM') as AllocatedEmail
      ,[Most_Frequent_User]
      ,[Most_Frequent_UID]
	  , coalesce(f.mail, 'Not in ADDM') as MostFrequentEmail
  FROM [win10assetdata].[dbo].[hardware_readiness_B] a inner join Outcomes c on (a.IsItOK = c.IsitOK) 
  left outer join PC_Classifications d on (a.Model = d.Model)
  left outer join allocated_Email e on (a.Allocated_UID = e.[User Name])
  left outer join frequent_Email f on (a.Most_Frequent_UID = f.[User Name])
  where a.Division not in ('Birmingham Adult Education Service')
  and (a.Allocated_UID not in ('UNALLOCATED', 'VACANT', 'YOUTH', 'TRAINING', 'STUDENT', 'STAFF', 'PUBLIC')
  and a.Allocated_UID is not null)
  and a.Asset_tag not in (select dbo.hw.Asset_tag
from HW
where User_ID = 'SHARED'
and Most_Frequent_User_ID = ''
and Last_Logged_On_User_ID = '')
  order by FullYearsOld desc, IsItOK