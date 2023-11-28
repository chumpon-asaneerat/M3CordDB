/****** Object:  Table [dbo].[CordSamplingDetails]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CordSamplingDetails](
	[TwistYarn] [bit] NULL,
	[CordDipping] [bit] NULL,
	[Rawmaterial] [bit] NULL,
	[SamplingDate] [datetime] NULL,
	[CustomerName] [nvarchar](100) NULL,
	[ProductCode] [nvarchar](30) NULL,
	[CordStructure] [nvarchar](100) NULL,
	[LotNo] [nvarchar](50) NULL,
	[ProductionSituationTwisting] [bit] NULL,
	[ProductionSituationHeatSet] [bit] NULL,
	[ProductionSituationDipCord] [bit] NULL,
	[ProductionSituationJointing] [bit] NULL,
	[StandardOfTwisting] [nvarchar](100) NULL,
	[S1] [bit] NULL,
	[S2] [bit] NULL,
	[S4] [bit] NULL,
	[S8] [bit] NULL,
	[S19] [bit] NULL,
	[Bobbin] [bit] NULL,
	[Cheese] [bit] NULL,
	[TaperBB] [bit] NULL,
	[ContainerOthers] [bit] NULL,
	[SpindleNo] [nvarchar](100) NULL,
	[Quantity] [nvarchar](100) NULL,
	[Polyester] [bit] NULL,
	[Nylon66] [bit] NULL,
	[MaterialOthers] [bit] NULL,
	[YarnType] [nvarchar](100) NULL,
	[Process] [bit] NULL,
	[Product] [bit] NULL,
	[Special] [bit] NULL,
	[Trial] [bit] NULL,
	[Shift] [nvarchar](50) NULL,
	[ShiftName] [nvarchar](100) NULL,
	[Remark] [nvarchar](100) NULL,
	[Direct] [bit] NULL,
	[Relax] [bit] NULL,
	[Relax_k] [nvarchar](50) NULL,
	[Relax_n] [nvarchar](50) NULL,
	[Necessary] [bit] NULL,
	[NotNecessary] [bit] NULL,
	[SpecialMentionJointing] [bit] NULL,
	[SpecialMentionNoJointing] [bit] NULL,
	[TensileR1] [decimal](18, 3) NULL,
	[TensileL1] [decimal](18, 3) NULL,
	[TensileR2] [decimal](18, 3) NULL,
	[TensileL2] [decimal](18, 3) NULL,
	[TensileR3] [decimal](18, 3) NULL,
	[TensileL3] [decimal](18, 3) NULL,
	[TensileR4] [decimal](18, 3) NULL,
	[TensileL4] [decimal](18, 3) NULL,
	[TensileR5] [decimal](18, 3) NULL,
	[TensileL5] [decimal](18, 3) NULL,
	[TensileRSum] [decimal](18, 3) NULL,
	[TensileLSum] [decimal](18, 3) NULL,
	[FirstTwistingR1] [decimal](18, 3) NULL,
	[FirstTwistingL1] [decimal](18, 3) NULL,
	[FirstTwistingR2] [decimal](18, 3) NULL,
	[FirstTwistingL2] [decimal](18, 3) NULL,
	[FirstTwistingR3] [decimal](18, 3) NULL,
	[FirstTwistingL3] [decimal](18, 3) NULL,
	[FirstTwistingR4] [decimal](18, 3) NULL,
	[FirstTwistingL4] [decimal](18, 3) NULL,
	[FirstTwistingR5] [decimal](18, 3) NULL,
	[FirstTwistingL5] [decimal](18, 3) NULL,
	[FirstTwistingRSum] [decimal](18, 3) NULL,
	[FirstTwistingLSum] [decimal](18, 3) NULL,
	[SecondTwistingR1] [decimal](18, 3) NULL,
	[SecondTwistingL1] [decimal](18, 3) NULL,
	[SecondTwistingR2] [decimal](18, 3) NULL,
	[SecondTwistingL2] [decimal](18, 3) NULL,
	[SecondTwistingR3] [decimal](18, 3) NULL,
	[SecondTwistingL3] [decimal](18, 3) NULL,
	[SecondTwistingR4] [decimal](18, 3) NULL,
	[SecondTwistingL4] [decimal](18, 3) NULL,
	[SecondTwistingR5] [decimal](18, 3) NULL,
	[SecondTwistingL5] [decimal](18, 3) NULL,
	[SecondTwistingRSum] [decimal](18, 3) NULL,
	[SecondTwistingLSum] [decimal](18, 3) NULL,
	[Remark1] [nvarchar](100) NULL,
	[Remark2] [nvarchar](100) NULL,
	[Remark3] [nvarchar](100) NULL,
	[Remark4] [nvarchar](100) NULL,
	[Remark5] [nvarchar](100) NULL,
	[RemarkSum] [nvarchar](100) NULL
) ON [PRIMARY]

GO