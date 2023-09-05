/****** Object:  StoredProcedure [dbo].[SaveConditionStd]    Script Date: 8/17/2023 8:41:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveConditionStd
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================

CREATE PROCEDURE [dbo].[SaveConditionStd] (
  @ProcessName nvarchar(30)
, @ProductCode nvarchar(30)
, @ParamName nvarchar(50)
, @ParamType int = 1
, @SC bit = 0
, @StdValueS nvarchar(100) = NULL
, @StdValueD decimal(18, 3) = NULL
, @StdValueE decimal(18, 3) = NULL
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM ConditionStd 
                    WHERE ProcessName = @ProcessName
                      AND ProductCode = @ProductCode
                      AND ParamName = @ParamName)
        BEGIN
            UPDATE ConditionStd 
               SET ParamType = @ParamType
                 , SC = @SC
                 , StdValueS = @StdValueS
                 , StdValueD = @StdValueD
                 , StdValueE = @StdValueE
             WHERE ProcessName = @ProcessName
               AND ProductCode = @ProductCode
               AND ParamName = @ParamName
        END
        ELSE
        BEGIN
			INSERT INTO ConditionStd
		    (
                  ProcessName
                , ProductCode
                , ParamName
                , ParamType
                , SC
                , StdValueS
                , StdValueD
                , StdValueE
			)
			VALUES
			(
                  @ProcessName
                , @ProductCode
                , @ParamName
                , @ParamType
                , @SC
                , @StdValueS
                , @StdValueD
                , @StdValueE
			);
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
