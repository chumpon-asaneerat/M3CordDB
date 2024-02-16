/****** Object:  Table [dbo].[S8WetPickup]    Script Date: 2/16/2024 9:17:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[S8WetPickup](
	[DIPPCId] [int] NULL,
	[ProductCode] [nvarchar](30) NULL,
	[LotNo] [nvarchar](30) NULL,
	[DoffingDate] [datetime] NULL,
	[DoffingNo] [int] NULL,
	[FirstDip1] [nvarchar](50) NULL,
	[SolutionName] [nvarchar](50) NULL,
	[FirstDip2] [nvarchar](50) NULL,
	[SolutionLotNo] [nvarchar](50) NULL,
	[SpeedSet] [decimal](18, 3) NULL,
	[SpeedActual] [decimal](18, 3) NULL,
	[StretchD] [decimal](18, 3) NULL,
	[StretchH] [decimal](18, 3) NULL,
	[StretchN] [decimal](18, 3) NULL,
	[TempD] [decimal](18, 3) NULL,
	[TempHN] [decimal](18, 3) NULL,
	[AMV1] [decimal](18, 3) NULL,
	[AMV2] [decimal](18, 3) NULL,
	[AMV3] [decimal](18, 3) NULL,
	[AMV4] [decimal](18, 3) NULL,
	[AMAmp1] [decimal](18, 3) NULL,
	[AMAmp2] [decimal](18, 3) NULL,
	[AMAmp3] [decimal](18, 3) NULL,
	[AMAmp4] [decimal](18, 3) NULL,
	[AMBearing1] [bit] NULL,
	[AMBearing2] [bit] NULL,
	[AMBearing3] [bit] NULL,
	[AMBearing4] [bit] NULL,
	[AMMotorNoise1] [bit] NULL,
	[AMMotorNoise2] [bit] NULL,
	[AMMotorNoise3] [bit] NULL,
	[AMMotorNoise4] [bit] NULL,
	[AMNoVibration1] [bit] NULL,
	[AMNoVibration2] [bit] NULL,
	[AMNoVibration3] [bit] NULL,
	[AMNoVibration4] [bit] NULL,
	[BurnerD] [bit] NULL,
	[BurnerHN] [bit] NULL,
	[GasLeakD] [bit] NULL,
	[GasLeakHN] [bit] NULL,
	[GasPresureD] [decimal](18, 3) NULL,
	[GasPresureHN] [decimal](18, 3) NULL,
	[AirPresureD] [decimal](18, 3) NULL,
	[AirPresureHN] [decimal](18, 3) NULL,
	[ACMotorExhaustFanD] [bit] NULL,
	[ACMotorExhaustFanHN] [bit] NULL,
	[ACMotorSupplyD] [bit] NULL,
	[ACMotorSupplyHN] [bit] NULL,
	[ExhaustFan1] [bit] NULL,
	[ExhaustFan2] [bit] NULL,
	[ExhaustFanSupply1] [bit] NULL,
	[ExhaustFanSupply2] [bit] NULL,
	[Remark] [nvarchar](200) NULL
) ON [PRIMARY]

GO
