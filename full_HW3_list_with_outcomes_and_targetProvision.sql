/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [Asset_tag]
      ,a.[Manufacturer]
      ,a.[Model]
      ,a.[model_category]
	  , c.Target_Provision
      ,[Operating_System]
      ,[Disk_space_(GB)]
      ,[Free_Disk_Space_(GB)]
      ,[RAM_(MB)]
      ,[CPU_speed_(MHz)]
      ,[AgeInYears]
      ,[FullYearsOld]
      ,a.[IsItOK]
	  , b.Outcome
	  , dbo.FinalOutcome1(a.FullYearsOld, b.Outcome, a.Asset_tag) as FinalOutcome
      ,[Scenario]
      ,[Directorate]
      ,[Division]
      ,[Section]
      ,[Location]
      ,[Allocated_User]
      ,[Allocated_UID]
      ,[Allocated_email]
      ,[Most_Frequent_User]
      ,[Most_Frequent_UID]
      ,[MostFrequent_Email]
      ,[Last_user_name]
      ,[Last_User_ID]
      ,[last_email]
      ,[VIP]
  FROM [win10assetdata].[dbo].[HW3_hardware_readiness] a
  left outer join Outcomes b on (a.IsItOK = b.IsItOK)
  left outer join PC_Classifications c on (a.Model = c.Model)