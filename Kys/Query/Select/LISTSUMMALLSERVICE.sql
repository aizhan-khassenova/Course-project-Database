/****** —тоимость услуг по каждому из заказов  ******/
SELECT 
ID_FROM_ZAKAZ,
SUM([Hasenova].[dbo].[SERVICE].PRICE) AS SUMSOFUSLUG
FROM [Hasenova].[dbo].[SZAKAZ] INNER JOIN [Hasenova].[dbo].[SERVICE]
ON [Hasenova].[dbo].[SZAKAZ].ID_ZAKAZ=[Hasenova].[dbo].[SERVICE].[ID_SERV]
GROUP BY ID_FROM_ZAKAZ