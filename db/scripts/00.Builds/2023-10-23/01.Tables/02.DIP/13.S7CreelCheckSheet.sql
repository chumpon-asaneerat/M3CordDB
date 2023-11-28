/****** Object:  Table [dbo].[S7CreelCheckSheet]    Script Date: 10/26/2023 9:11:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S7CreelCheckSheet](
	[CreelId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[CheckDate] [datetime] NULL,
	[MCCode] [nvarchar](10) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_S7CreelCheckSheet] PRIMARY KEY CLUSTERED 
(
	[CreelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
