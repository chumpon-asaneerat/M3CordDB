/****** Object:  StoredProcedure [dbo].[GetS5ConditionStdByDIPCode]    Script Date: 12/5/2023 19:50:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetS5ConditionStdByDIPCode
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetS5ConditionStdByDIPCode NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetS5ConditionStdByDIPCode]
(
  @DIPProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT  @DIPProductCode AS ProductCode ,
            ProductCode AS TwistProductCode,
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
     WHERE ProductCode IN 
         (
            SELECT DISTINCT ProductCode FROM Product
             WHERE UPPER(LTRIM(RTRIM(DIPProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@DIPProductCode, DIPProductCode))))
         )
     ORDER BY ProductCode;

END

GO
