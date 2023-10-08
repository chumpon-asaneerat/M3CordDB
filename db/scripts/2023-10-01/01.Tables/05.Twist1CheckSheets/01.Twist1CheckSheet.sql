/****** Object:  Table [dbo].[Twist1CheckSheet]    Script Date: 10/9/2023 4:56:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Twist1CheckSheet](
	[Twist1CheckId] [int] NOT NULL,
	[PCTwist1Id] [int] NULL,
	[TestFlag] [bit] NULL DEFAULT 0,
	[DoffNo] [int] NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserId] [int] NULL,
	[Chief] [nvarchar](100) NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_Twist1CheckSheet] PRIMARY KEY CLUSTERED 
(
	[Twist1CheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
