/****** Кто работал в текушем году ******/
SELECT  DISTINCT
       [Hasenova].[dbo].[TS_WORKER].[LASNAME]
      ,[Hasenova].[dbo].[TS_WORKER].[NAME]
      ,[Hasenova].[dbo].[TS_WORKER].[SECNAME]
      ,[Hasenova].[dbo].[TS_WORKER].STATUS
  FROM [Hasenova].[dbo].[ZAKAZ],[Hasenova].[dbo].[SZAKAZ],[Hasenova].[dbo].TS_WORKER
  where 
  (DATEPART(YEAR,[Hasenova].[dbo].[ZAKAZ].[DATA])=DATEPART(YEAR,SYSDATETIME())) 
  and ([Hasenova].[dbo].[ZAKAZ].[ID_ZAKAZ]=[Hasenova].[dbo].[SZAKAZ].[ID_FROM_ZAKAZ]) 
  and ([Hasenova].[dbo].[SZAKAZ].[ID_WORKER]=[Hasenova].[dbo].[TS_WORKER].[ID_WORKER])
  