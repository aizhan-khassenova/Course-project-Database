CREATE PROCEDURE WHO_WORK_SUB
AS
BEGIN
SELECT  DISTINCT
     [Hasenova].[dbo].TS_SUB.NAME
  FROM [Hasenova].[dbo].[ZAKAZ],[Hasenova].[dbo].[SZAKAZ],[Hasenova].[dbo].TS_WORKER,[Hasenova].[dbo].TS_SUB
  where 
  (DATEPART(YEAR,[Hasenova].[dbo].[ZAKAZ].[DATA])=DATEPART(YEAR,SYSDATETIME())) 
  and ([Hasenova].[dbo].[ZAKAZ].[ID_ZAKAZ]=[Hasenova].[dbo].[SZAKAZ].[ID_FROM_ZAKAZ]) 
  and ([Hasenova].[dbo].[SZAKAZ].[ID_WORKER]=[Hasenova].[dbo].[TS_WORKER].[ID_WORKER])
  and ([Hasenova].[dbo].[TS_WORKER].ID_SUB=[Hasenova].[dbo].TS_SUB.ID_SUB)
END
GO