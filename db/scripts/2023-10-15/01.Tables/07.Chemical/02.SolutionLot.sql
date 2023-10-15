/****** Object:  Table [dbo].[SolutionLot]    Script Date: 14/10/2566 10:50:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SolutionLot](
	[SolutionLot] [nvarchar](10) NOT NULL,
	[SolutionId] [int] NULL,
	[DipSolutionQty] [decimal](6, 2) NULL,
	[MixDate] [datetime] NULL,
	[QualifiedDate] [datetime] NULL,
	[ExpireDate] [datetime] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [int] NULL,
 CONSTRAINT [PK_SolutionLot] PRIMARY KEY CLUSTERED 
(
	[SolutionLot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


