/****** Object:  StoredProcedure [dbo].[GetCurrentS5Condition]    Script Date: 11/29/2023 3:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCurrentS5Condition
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCurrentS5Condition NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetCurrentS5Condition]
AS
BEGIN
    SELECT  S5ConditionId, 
            ProductCode ,
			MainSupplySteamPressureSC ,
			MainSupplySteamPressureSet ,
			MainSupplySteamPressureSetErr ,
			MainSupplySteamPressureSetActual ,
			MainSupplySteamPressureSpec ,
			MainSupplySteamPressureSpecErr ,
			MainSupplySteamPressureSpecActual ,
			AgeingSteamPressureSC ,
			AgeingSteamPressureSet ,
			AgeingSteamPressureSetErr ,
			AgeingSteamPressureSetActual ,
			AgeingSteamPressureSpec ,
			AgeingSteamPressureSpecErr ,
			AgeingSteamPressureActual ,
			SettingTemperatureSC ,
			SettingTemperatureSet ,
			SettingTemperatureSetErr ,
			SettingTemperatureSetActual ,
			SettingTemperatureSpec ,
			SettingTemperatureSpecErr ,
			SettingTemperatureSpecActual ,
			SettingTimeSC ,
			SettingTimeSet ,
			SettingTimeSetErr ,
			SettingTimeSetActual ,
			SettingTimeSpec ,
			SettingTimeSpecErr ,
			SettingTimeSpecActual ,
			LampStatusSystemSC ,
			LampStatusSystemSet ,
			LampStatusSystemSetActual ,
			LampStatusSystemSpec ,
			LampStatusSystemSpecActual ,
			SoudSystemTemperatureSC ,
			SoudSystemTemperatureSet ,
			SoudSystemTemperatureSetActual ,
			SoudSystemTemperatureSpec ,
			SoudSystemTemperatureSpecActual ,
			YarnTypeSC ,
			YarnTypeSet ,
			YarnTypeSetActual ,
			YarnTypeSpec ,
			YarnTypeSpecActual ,
			CordStructureSC ,
			CordStructureSet ,
			CordStructureSetActual ,
			CordStructureSpec ,
			CordStructureSpecActual ,
			TwistingNoSC ,
			TwistingNoSet ,
			TwistingNoSetErr ,
			TwistingNoSetActual ,
			TwistingNoSpec ,
			TwistingNoSpecErr ,
			TwistingNoSpecActual ,
			UnitWeightSC ,
			UnitWeightSet ,
			UnitWeightSetErr ,
			UnitWeightSetActual ,
			UnitWeightSpec ,
			UnitWeightSpecErr ,
			UnitWeightSpecActual ,
			StartingTimeSC ,
			StartingTimeSettingTime ,
			StartingTimeStartAgeingTime ,
			FinishTimeSC ,
			FinishTime ,
			OutTimeSC ,
			OutTime ,
			DoffNo1SC ,
			DoffNo1PalletCode ,
			DoffNo1TraceNo ,
			DoffNo1MCNo ,
			DoffNo1Doff ,
			DoffNo1Qty ,
			DoffNo2SC ,
			DoffNo2PalletCode ,
			DoffNo2TraceNo ,
			DoffNo2MCNo ,
			DoffNo2Doff ,
			DoffNo2Qty ,
            UpdateBy ,
            UpdateDate ,
            CheckedBy , 
            CheckedDate ,
            ApproveBy ,
            ApproveDate ,
            ShiftLeader , 
            ProductionManager,
            [Remark],
            LotOrTraceNo
     FROM S5Condition
     WHERE /*StartingTimeSettingTime IS NULL 
        OR */
           StartingTimeStartAgeingTime IS NULL
        OR FinishTime IS NULL
        OR OutTime IS NULL
     ORDER BY S5ConditionId;

END

GO
