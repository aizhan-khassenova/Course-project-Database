CREATE TABLE [dbo].[TS_WORKER] (
  [ID_WORKER] int IDENTITY(1, 1) NOT NULL,
  [NAME] varchar(50) NOT NULL,
  [SECNAME] varchar(50) NOT NULL,
  [LASNAME] varchar(50) NOT NULL,
  [ID_SUB] int NOT NULL,
  [STATUS] varchar(100) NOT NULL,
  PRIMARY KEY CLUSTERED ([ID_WORKER])
)
ON [PRIMARY]
GO