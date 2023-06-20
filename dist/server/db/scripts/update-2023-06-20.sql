/*********** Script Update Date: 2023-06-20  ***********/
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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropTable]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: DropAll.
-- Description:	Drop Table and it's related indexes, constrains, keys
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropTable
-- =============================================
CREATE PROCEDURE [dbo].[DropTable]
(
  @tableName nvarchar(max)
)
AS
BEGIN
DECLARE @sqlDropIndexes nvarchar(MAX)
DECLARE @sqlDropConstrains nvarchar(MAX)
DECLARE @sqlDropTable nvarchar(MAX)
	-- DROP CONSTRAINS (PK, FK)
	SET @sqlDropConstrains = ''
	SELECT @sqlDropConstrains += N'ALTER TABLE ' + QUOTENAME(object_schema_name(object_id)) + '.' + QUOTENAME(OBJECT_NAME(PARENT_OBJECT_ID)) + ' DROP CONSTRAINT ' + QUOTENAME(OBJECT_NAME(OBJECT_ID)) + ';' + CHAR(13) + CHAR(10)
	  FROM SYS.OBJECTS
	 WHERE TYPE_DESC LIKE '%CONSTRAINT' AND OBJECT_NAME(PARENT_OBJECT_ID) = @tableName;

	--PRINT 'DROP CONSTRAINS (PK, FK)'
	--PRINT @sqlDropConstrains
	EXECUTE SP_EXECUTESQL @sqlDropConstrains

	-- DROP INDEXES
	SET @sqlDropIndexes = ''
	SELECT @sqlDropIndexes = (
		SELECT 'DROP INDEX ' + QUOTENAME(ix.name) + ' ON ' + QUOTENAME(object_schema_name(object_id)) + '.' + QUOTENAME(OBJECT_NAME(object_id)) + ';' + CHAR(10)
		  FROM sys.indexes ix
		 WHERE ix.Name IS NOT NULL 
		   AND object_schema_name(object_id) NOT IN ('sys')
		   --AND ix.Name like '%IX_%'
		   AND OBJECT_NAME(object_id) = COALESCE(@tableName, OBJECT_NAME(object_id))
		   FOR XML PATH(''))

	--PRINT 'DROP INDEXES'
	--PRINT @sqlDropIndexes
	EXEC SP_EXECUTESQL @sqlDropIndexes

	-- DROP TABLE (Identity Property should be remove when table is drop.
	-- To check all identity columns use below query
	--SELECT object_name(object_id) as TableName, name as ColumnName FROM sys.columns WHERE is_identity = 1

	SET @sqlDropTable = 'DROP TABLE ' + @tableName
	--PRINT 'DROP TABLE'
	EXEC SP_EXECUTESQL @sqlDropTable
END

GO

