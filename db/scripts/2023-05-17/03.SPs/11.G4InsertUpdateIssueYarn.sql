SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	G4InsertUpdateIssueYarn
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
CREATE PROCEDURE [dbo].[G4InsertUpdateIssueYarn] (
  @RequestNo nvarchar(30)
, @PalletNo nvarchar(30)
, @TraceNo nvarchar(30)
, @WeightQty decimal(16, 3)
, @ConeCH decimal(16, 3)
, @PalletType nvarchar(30)
, @IssueDate datetime
, @IssueBy int
--, @G4IssueYarnPkId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @cnt int
DECLARE @G4YarnWeight decimal(16, 3)
DECLARE @G4RemainWeight decimal(16, 3)
DECLARE @RemainWeight decimal(16, 3)
DECLARE @NewPalletType nvarchar(30)
DECLARE @FinishFlag bit
    BEGIN TRY
        SELECT @cnt = COUNT(*) 
          FROM G4IssueYarn
         WHERE RequestNo = @RequestNo
           AND PalletNo = @PalletNo
           AND (DeleteFlag IS NULL OR DeleteFlag = 0)
        IF (@cnt = 0)
        BEGIN
            -- NO ISSUE YARN FOUND. SO INSERT NEW ONE
            INSERT INTO G4IssueYarn
            (
                  RequestNo
                , IssueDate
                , IssueBy
                , PalletNo
                , TraceNo
                , WeightQty
                , ConeCH
                , PalletType
                , DeleteFlag
            )
            VALUES
            (
                  @RequestNo
                , @IssueDate
                , @IssueBy
                , @PalletNo
                , @TraceNo
                , @WeightQty
                , @ConeCH
                , @PalletType
                , 0 -- DeleteFlag = 0 (Not delete)
            )
            -- NOW CALCULATE WEIGHT
            SELECT @G4YarnWeight = WeightQty
              FROM G4Yarn
             WHERE PalletNo = @PalletNo;
            
            IF (@G4YarnWeight = @WeightQty)
            BEGIN
                SET @RemainWeight = 0
                SET @FinishFlag = 1 -- SET FLAG THAT PALLET IS FINISH
                SET @NewPalletType = NULL
            END
            ELSE
            BEGIN
                SET @RemainWeight = @G4YarnWeight - @WeightQty
                SET @FinishFlag = NULL
                SET @NewPalletType = N'H'
            END
            -- UPDATE CALCULATE WEIGHT AND FLAGS
            UPDATE G4Yarn
               SET RemainQty = @RemainWeight
                 , FinishFlag = COALESCE(@FinishFlag, FinishFlag)
                 , PalletType = COALESCE(@NewPalletType, PalletType)
                 , UpdateDate = COALESCE(@IssueDate, UpdateDate)
             WHERE PalletNo = @PalletNo
        END
        ELSE
        BEGIN
            -- ISSUE YARN FOUND. SO CANCEL YARN FROM Request No.
            UPDATE G4IssueYarn
               SET DeleteFlag = 1 -- Set flag = 1 (Deleted)
                 , [Remark] = N'Cancel Pallet'
                 , EditDate = GETDATE()
                 , EditBy = COALESCE(@IssueBy, EditBy)
             WHERE RequestNo = @RequestNo
               AND PalletNo = @PalletNo

            -- NOW CALCULATE WEIGHT
            SELECT @G4YarnWeight = WeightQty
                 , @G4RemainWeight = RemainQty
              FROM G4Yarn
             WHERE PalletNo = @PalletNo;

            IF (@G4RemainWeight IS NULL) 
            BEGIN
                -- PREVENT CALCULATION ERROR WITH NULL VALUE
                SET @G4RemainWeight = 0
            END

            SET @RemainWeight = @G4RemainWeight + @WeightQty

            IF (@G4YarnWeight = @RemainWeight)
            BEGIN
                SET @NewPalletType = N'F'
            END
            ELSE
            BEGIN
                SET @NewPalletType = N'H'
            END
            -- UPDATE CALCULATE WEIGHT AND FLAGS
            UPDATE G4Yarn
               SET RemainQty = @RemainWeight
                 , FinishFlag = 0 -- SET FLAG THAT PALLET IS NOT FINISH
                 , PalletType = COALESCE(@NewPalletType, PalletType)
                 , UpdateDate = GETDATE()
             WHERE PalletNo = @PalletNo
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
