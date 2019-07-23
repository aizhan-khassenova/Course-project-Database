SELECT  DISTINCT
     [Hasenova].[dbo].TS_SUB.NAME
  FROM [Hasenova].[dbo].[ZAKAZ],[Hasenova].[dbo].[SZAKAZ],[Hasenova].[dbo].TS_WORKER,[Hasenova].[dbo].TS_SUB,[Hasenova].[dbo].PAY
  where 
  ((DATEPART(YEAR,[Hasenova].[dbo].[ZAKAZ].[DATA])=DATEPART(YEAR,SYSDATETIME())) 
  and ([Hasenova].[dbo].[ZAKAZ].[ID_ZAKAZ]=[Hasenova].[dbo].[SZAKAZ].[ID_FROM_ZAKAZ]) 
  and ([Hasenova].[dbo].[SZAKAZ].[ID_WORKER]=[Hasenova].[dbo].[TS_WORKER].[ID_WORKER])
  and ([Hasenova].[dbo].[TS_WORKER].ID_SUB=[Hasenova].[dbo].TS_SUB.ID_SUB)) or
  ((DATEPART(YEAR,[Hasenova].[dbo].[PAY].[DATA])=DATEPART(YEAR,SYSDATETIME()))
  and ([Hasenova].[dbo].[ZAKAZ].[ID_ZAKAZ]=[Hasenova].[dbo].[PAY].ID_ZAKAZA) 
  and ([Hasenova].[dbo].[PAY].[ID_WORKER]=[Hasenova].[dbo].[TS_WORKER].[ID_WORKER])
   and ([Hasenova].[dbo].[TS_WORKER].ID_SUB=[Hasenova].[dbo].TS_SUB.ID_SUB)
  )
GO