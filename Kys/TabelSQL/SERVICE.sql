CREATE TABLE [dbo].[SERVICE] (
  [ID_SERV] int IDENTITY(1, 1) NOT NULL,
  [NAME] varchar(200) NOT NULL,
  [PRICE] int NULL,
  PRIMARY KEY CLUSTERED ([ID_SERV])
)
ON [PRIMARY]
GO