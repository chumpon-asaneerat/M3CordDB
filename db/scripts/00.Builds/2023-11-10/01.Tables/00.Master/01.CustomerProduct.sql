/****** Object:  Table [dbo].[CustomerProduct]    Script Date: 11/19/2023 15:58:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerProduct](
	[ProductCode] [nvarchar](30) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[ServiceLifeMonth] [int] NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_CustomerProduct] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC,
	[CustomerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
