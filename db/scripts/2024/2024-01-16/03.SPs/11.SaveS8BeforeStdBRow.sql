/****** Object:  StoredProcedure [dbo].[SaveS8BeforeStdBRow]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8BeforeStdBRow] (
    @ProductCode nvarchar (30) ,
    @DIPPCId int ,
    @LotNo nvarchar(50)
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @RowType int = -1
	BEGIN TRY
        IF NOT EXISTS (SELECT TOP 1 * 
                         FROM S8BeforeCondition 
                        WHERE ProductCode = @ProductCode
                          AND DIPPCId = @DIPPCId
                          AND RowType = @RowType
                          AND LotNo = @LotNo)
        BEGIN
            INSERT INTO S8BeforeCondition
            (
                  [DIPPCId]
                , [RowType]
                ,[LotNo]
                ,[ProductCode]
                ,[SolutionNameBath1SC]
                ,[SolutionNameBath1]
                ,[SolutionNameBath2SC]
                ,[SolutionNameBath2]
                ,[TempJacketDrumBath1SC]
                ,[TempJacketDrumBath1Min]
                ,[TempJacketDrumBath1Max]
                ,[TempJacketDrumBath2SC]
                ,[TempJacketDrumBath2Min]
                ,[TempJacketDrumBath2Max]
                ,[TempChemicalBath1SC]
                ,[TempChemicalBath1Min]
                ,[TempChemicalBath1Max]
                ,[TempChemicalBath2SC]
                ,[TempChemicalBath2Min]
                ,[TempChemicalBath2Max]
                ,[StretchDSC]
                ,[StretchD]
                ,[StretchDErr]
                ,[StretchHSC]
                ,[StretchH]
                ,[StretchHErr]
                ,[StretchNSC]
                ,[StretchN]
                ,[StretchNErr]
                ,[TempDSC]
                ,[TempD]
                ,[TempDErr]
                ,[TempHNSC]
                ,[TempHN]
                ,[TempHNErr]
                ,[SpeedSC]
                ,[Speed]
                ,[SpeedErr]
                ,[ExhaustFanDryerSC]
                ,[ExhaustFanDryer]
                ,[ExhaustFanHNSC]
                ,[ExhaustFanHN]
                ,[CleanBath1SC]
                ,[CleanBath2SC]
                ,[CleanFrontSC]
                ,[CamboxSC]
            )
            SELECT DIPPCId = @DIPPCId 
                , RowType = @RowType
                , LotNo = @LotNo
                ,[ProductCode]
                ,[SolutionNameBath1SC]
                ,[SolutionNameBath1]
                ,[SolutionNameBath2SC]
                ,[SolutionNameBath2]
                ,[TempJacketDrumBath1SC]
                ,[TempJacketDrumBath1Min]
                ,[TempJacketDrumBath1Max]
                ,[TempJacketDrumBath2SC]
                ,[TempJacketDrumBath2Min]
                ,[TempJacketDrumBath2Max]
                ,[TempChemicalBath1SC]
                ,[TempChemicalBath1Min]
                ,[TempChemicalBath1Max]
                ,[TempChemicalBath2SC]
                ,[TempChemicalBath2Min]
                ,[TempChemicalBath2Max]
                ,[StretchDSC]
                ,[StretchD]
                ,[StretchDErr]
                ,[StretchHSC]
                ,[StretchH]
                ,[StretchHErr]
                ,[StretchNSC]
                ,[StretchN]
                ,[StretchNErr]
                ,[TempDSC]
                ,[TempD]
                ,[TempDErr]
                ,[TempHNSC]
                ,[TempHN]
                ,[TempHNErr]
                ,[SpeedSC]
                ,[Speed]
                ,[SpeedErr]
                ,[ExhaustFanDryerSC]
                ,[ExhaustFanDryer]
                ,[ExhaustFanHNSC]
                ,[ExhaustFanHN]
                ,[CleanBath1SC]
                ,[CleanBath2SC]
                ,[CleanFrontSC]
                ,[CamboxSC]
            FROM S8BeforeConditionStd 
            WHERE ProductCode = @ProductCode;
        END

        -- Update Error Status/Message
        SET @errNum = 0;
        SET @errMsg = 'Success';
	END TRY
	BEGIN CATCH
		SET @errNum = ERROR_NUMBER();
		SET @errMsg = ERROR_MESSAGE();
	END CATCH
END

GO
