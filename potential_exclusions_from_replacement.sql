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
      ,[Most_Frequent_User]
      ,[Most_Frequent_UID]
  FROM [win10assetdata].[dbo].[hardware_readiness_B] a inner join Outcomes c on (a.IsItOK = c.IsitOK) 
  left outer join PC_Classifications d on (a.Model = d.Model)
  where (FullYearsOld < 6
  and
  c.Outcome = 'Replace'
  and a.[CPU_speed_(MHz)] is null)
  and a.Division not in ('Birmingham Adult Education Service')
  and (a.Allocated_UID not in ('UNALLOCATED', 'VACANT', 'YOUTH', 'TRAINING', 'STUDENT', 'STAFF', 'PUBLIC') and a.Allocated_UID is not null)
  order by FullYearsOld desc, IsItOK