/****** Object:  Table [dbo].[ChemicalMaster]    Script Date: 14/10/2566 10:49:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ChemicalMaster](
	[ChemicalCode] [nvarchar](20) NOT NULL,
	[ChemicalNo] [nvarchar](5) NULL,
	[ChemicalName] [nvarchar](50) NULL,
	[UseFlag] [char](1) NULL,
 CONSTRAINT [PK_ChemicalMaster] PRIMARY KEY CLUSTERED 
(
	[ChemicalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

