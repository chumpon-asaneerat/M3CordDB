/****** Object:  StoredProcedure [dbo].[GetS5ConditionStd]    Script Date: 7/10/2566 2:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS5ConditionStd
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS5ConditionStd]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT  ProductCode ,
			MainSupplySteamPressureSC ,
			MainSupplySteamPressureSet ,
			MainSupplySteamPressureSetErr ,
			MainSupplySteamPressureSpec ,
			MainSupplySteamPressureSpecErr ,
			AgeingSteamPressureSC ,
			AgeingSteamPressureSet ,
			AgeingSteamPressureSetErr ,
			AgeingSteamPressureSpec ,
			AgeingSteamPressureSpecErr ,
			SettingTemperatureSC ,
			SettingTemperatureSet ,
			SettingTemperatureSetErr ,
			SettingTemperatureSpec ,
			SettingTemperatureSpecErr ,
			SettingTimeSC ,
			SettingTimeSet ,
			SettingTimeSetErr ,
			SettingTimeSpec ,
			SettingTimeSpecErr ,
			LampStatusSystemSC ,
			LampStatusSystemSet ,
			LampStatusSystemSpec ,
			SoudSystemTemperatureSC ,
			SoudSystemTemperatureSet ,
			SoudSystemTemperatureSpec ,
			YarnTypeSC ,
			YarnTypeSet ,
			YarnTypeSpec ,
			CordStructureSC ,
			CordStructureSet ,
			CordStructureSpec ,
			TwistingNoSC ,
			TwistingNoSet ,
			TwistingNoSetErr ,
			TwistingNoSpec ,
			TwistingNoSpecErr ,
			UnitWeightSC ,
			UnitWeightSet ,
			UnitWeightSetErr ,
			UnitWeightSpec ,
			UnitWeightSpecErr 
     FROM S5ConditionStd
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO
