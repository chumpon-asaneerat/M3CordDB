/****** Object:  Table [dbo].[PCTwist1Operation]    Script Date: 9/11/2023 7:00:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PCTwist1Operation](
	[PCTwist1OpId] [int] IDENTITY(1,1) NOT NULL,
	[PCTwist1Id] [int] NULL,
	[ProductionDate] [datetime] NULL,
	[TestFlag] [bit] NULL,
	[DoffNo] [int] NULL,
	[UnitWeight] [decimal](18, 3) NULL,
	[OutputCH] [decimal](18, 3) NULL,
	[ProductWeight] [decimal](18, 3) NULL,
	[WasteWeight] [decimal](18, 3) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_PCTwist1Operation] PRIMARY KEY CLUSTERED 
(
	[PCTwist1OpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
