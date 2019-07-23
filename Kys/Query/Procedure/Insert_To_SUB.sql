CREATE PROCEDURE Insert_To_SUB
@SUB_NAME varchar(200)
AS
BEGIN
DECLARE @i int;
SET @i=1;
while (@i<4)
BEGIN
INSERT INTO [Hasenova].[dbo].[TS_SUB]
           ([NAME])
     VALUES
           (@SUB_NAME+Cast(@i AS varchar(3)))
SET @i=@i+1;
END
END
GO