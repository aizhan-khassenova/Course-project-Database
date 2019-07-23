
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE bir_ZAKAZ_info 

AS
BEGIN
SELECT [Hasenova].[dbo].[ZAKAZ].[ID_ZAKAZ]
      ,[Hasenova].[dbo].CUST.LASTNAME
      ,[Hasenova].[dbo].CUST.NAME
      ,[Hasenova].[dbo].CUST.SECNAME     
      ,[Hasenova].[dbo].[SERVICE].NAME
      ,[Hasenova].[dbo].[TS_MARK].TS_NAME
      ,[Hasenova].[dbo].[SCLAD].NAME
      ,[Hasenova].[dbo].[TS_TYPE].TS_NAME
      ,[DATA]
      ,[EDATA]
  FROM [Hasenova].[dbo].[ZAKAZ],[Hasenova].[dbo].[UZAKAZ],[Hasenova].[dbo].SCLAD,[Hasenova].[dbo].[SERVICE],[Hasenova].[dbo].[TS_MARK],[Hasenova].[dbo].[TS_TYPE]
  ,[Hasenova].[dbo].CUST
  where ([Hasenova].[dbo].[ZAKAZ].ID_ZAKAZ=1) 
  and ([Hasenova].[dbo].[ZAKAZ].ID_ZAKAZ=[Hasenova].[dbo].[UZAKAZ].ID_ZAKAZ)
  and ([Hasenova].[dbo].[UZAKAZ].[ID_SCLAD]=[Hasenova].[dbo].[SCLAD].[ID_SC])
  and ([Hasenova].[dbo].[SERVICE].ID_SERV=[Hasenova].[dbo].[UZAKAZ].ID_ZAKAZ)
  and ([Hasenova].[dbo].[TS_MARK].ID_TTS=[Hasenova].[dbo].[ZAKAZ].ID_TSMARK)
  and ([Hasenova].[dbo].[TS_TYPE].ID_TTS=[Hasenova].[dbo].ZAKAZ.ID_TS)
  and ([ID_CUST]=[Hasenova].[dbo].CUST.IIN)
END
GO
