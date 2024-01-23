/****** Object:  StoredProcedure [dbo].[DeleteS8ProductionConditionItemStd]    Script Date: 1/11/2024 1:14:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteS8ProductionConditionItemStd] (
    @DIPPCId int 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        DELETE FROM S8ProductionConditionItem
         WHERE DIPPCId = @DIPPCId
           AND (RowType = -2 OR RowType = -1 OR RowType = 0)

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
