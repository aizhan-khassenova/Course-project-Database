CREATE PROCEDURE GET_1st_DAY
@DAY int
AS
BEGIN
     SELECT [ID_OPLATA]
      ,CONVERT(varchar,[DATA],4) AS DATA
      ,[ID_ZAKAZA]
      ,[ID_CUST]
      ,[ID_WORKER]
      ,[PRICE]
      from PAY
 Where (DATEPART(d,[DATA])=@DAY)
END
GO