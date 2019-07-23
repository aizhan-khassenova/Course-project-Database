CREATE TABLE [dbo].[CUST] (
  [IIN] bigint NOT NULL,
  [NAME] varchar(50) NOT NULL,
  [SECNAME] varchar(50) NOT NULL,
  [LASTNAME] varchar(50) NOT NULL,
  [COUNTRY] varchar(50) NOT NULL,
  [CITY] varchar(50) NOT NULL,
  [STREET] varchar(50) NOT NULL,
  [HOME] varchar(100) NOT NULL,
  [PHONE] varchar(20) NOT NULL,
  PRIMARY KEY CLUSTERED ([IIN])
)
GO