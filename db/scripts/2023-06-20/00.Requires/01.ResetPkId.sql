/****** Object:  StoredProcedure [dbo].[ResetPKId]    Script Date: 11/27/2022 9:58:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	ResetPKId
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC ResetPkId N'TABLE NAME'
-- =============================================
CREATE PROCEDURE [dbo].[ResetPKId]
(
  @TableName nvarchar(max)
, @seedId int = 0
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out
)
AS
BEGIN
    BEGIN TRY
		IF (@seedId IS NULL) SET @seedId = 0
        DBCC CHECKIDENT(@TableName, RESEED, @seedId);
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
