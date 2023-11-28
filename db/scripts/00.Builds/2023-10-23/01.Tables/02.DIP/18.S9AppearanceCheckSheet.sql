/****** Object:  Table [dbo].[S9AppearanceCheckSheet]    Script Date: 10/26/2023 9:56:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S9AppearanceCheckSheet](
	[AppearId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[CheckDate] [datetime] NULL,
	[MCCode] [nvarchar](10) NULL,
	[ShiftName] [nvarchar](10) NULL,
	[UserName] [nvarchar](100) NULL,
 CONSTRAINT [PK_S9AppearanceCheckSheet] PRIMARY KEY CLUSTERED 
(
	[AppearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
