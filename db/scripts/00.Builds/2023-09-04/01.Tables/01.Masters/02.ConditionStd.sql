/****** Object:  Table [dbo].[ConditionStd]    Script Date: 9/5/2023 10:38:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ConditionStd](
	[ProcessName] [nvarchar](30) NOT NULL,
	[ProductCode] [nvarchar](30) NOT NULL,
	[ParamName] [nvarchar](50) NOT NULL,
	[SC] [bit] NULL,
	[ParamType] [int] NULL,
	[StdValueS] [nvarchar](100) NULL,
	[StdValueD] [decimal](18, 3) NULL,
	[StdValueE] [decimal](18, 3) NULL,
    [StdValueB] [bit] NULL,
 CONSTRAINT [PK_ComditionStd] PRIMARY KEY CLUSTERED 
(
	[ProcessName] ASC,
	[ProductCode] ASC,
	[ParamName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
