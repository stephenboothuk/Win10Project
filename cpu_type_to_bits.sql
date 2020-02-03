use win10assetdata
go

SELECT  ltrim(rtrim([cpu_type]))
      ,[Data_Width]
  FROM [win10assetdata].[dbo].[CPU_Width]
  where Data_Width is not null
order by cpu_type