/****** Object:  Table [dbo].[ProductItemCode]    Script Date: 8/17/2023 9:02:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductItemCode](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_ProductItemCode] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
