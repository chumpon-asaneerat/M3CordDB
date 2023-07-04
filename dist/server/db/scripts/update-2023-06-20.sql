/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropAllViews]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: DropAllViews.
-- Description:	Drop all Views
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropAllViews
-- =============================================
CREATE PROCEDURE [dbo].[DropAllViews]
AS
BEGIN
CREATE TABLE #VIEW_NAMES
(
    ViewName nvarchar(100)
);

DECLARE @sql nvarchar(MAX);
DECLARE @name nvarchar(100);
DECLARE @dropViewCursor CURSOR;
	/*========= DROP VIEWS =========*/
    INSERT INTO #VIEW_NAMES
        (ViewName)
    SELECT name
    FROM sys.views;

    SET @dropViewCursor = CURSOR LOCAL FAST_FORWARD 
	    FOR SELECT ViewName
    FROM #VIEW_NAMES;

    OPEN @dropViewCursor;
    FETCH NEXT FROM @dropViewCursor INTO @name;
    WHILE @@FETCH_STATUS = 0
	BEGIN
        -- drop table.
        SET @sql = 'DROP VIEW ' + @name;
        EXECUTE SP_EXECUTESQL @sql;
        
        FETCH NEXT FROM @dropViewCursor INTO @name;
    END
    CLOSE @dropViewCursor;
    DEALLOCATE @dropViewCursor;

    DROP TABLE #VIEW_NAMES;
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropAllFNs]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: DropAllFNs.
-- Description:	Drop all Functions
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropAllFNs
-- =============================================
CREATE PROCEDURE [dbo].[DropAllFNs]
AS
BEGIN
CREATE TABLE #FN_NAMES
(
    FuncName nvarchar(100)
);

DECLARE @sql nvarchar(MAX);
DECLARE @name nvarchar(100);
DECLARE @dropFuncCursor CURSOR;
	/*========= DROP FUNCTIONS =========*/
    INSERT INTO #FN_NAMES
        (FuncName)
    SELECT O.name
      FROM sys.sql_modules M
     INNER JOIN sys.objects O 
	    ON M.object_id = O.object_id
     WHERE O.type IN ('IF','TF','FN')

    SET @dropFuncCursor = CURSOR LOCAL FAST_FORWARD 
	    FOR SELECT FuncName
    FROM #FN_NAMES;

    OPEN @dropFuncCursor;
    FETCH NEXT FROM @dropFuncCursor INTO @name;
    WHILE @@FETCH_STATUS = 0
	BEGIN
        -- drop table.
        SET @sql = 'DROP FUNCTION ' + @name;
        EXECUTE SP_EXECUTESQL @sql;
        
        FETCH NEXT FROM @dropFuncCursor INTO @name;
    END
    CLOSE @dropFuncCursor;
    DEALLOCATE @dropFuncCursor;

    DROP TABLE #FN_NAMES;
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropAllSPs]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: Drop All SPs.
-- Description:	Drop all Stored Procedures
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropAllSPs
-- =============================================
CREATE PROCEDURE DropAllSPs
AS
BEGIN
CREATE TABLE #SP_NAMES
(
    ProcName nvarchar(100)
);

DECLARE @sql nvarchar(MAX);
DECLARE @name nvarchar(100);
DECLARE @dropSPCursor CURSOR;
	/*========= DROP PROCEDURES =========*/
    INSERT INTO #SP_NAMES
        (ProcName)
    SELECT name
      FROM sys.objects 
	 WHERE type = 'P' 
	   AND NAME NOT IN (
             'DropAll'
           , 'DropAllSPs'
           , 'DropAllFNs'
           , 'DropAllViews'
           , 'DropTable'
           , 'DropAllTables') -- ignore
	 ORDER BY modify_date DESC

    SET @dropSPCursor = CURSOR LOCAL FAST_FORWARD 
	    FOR SELECT ProcName
    FROM #SP_NAMES;

    OPEN @dropSPCursor;
    FETCH NEXT FROM @dropSPCursor INTO @name;
    WHILE @@FETCH_STATUS = 0
	BEGIN
        -- drop procedures.
        SET @sql = 'DROP PROCEDURE ' + @name;
        EXECUTE SP_EXECUTESQL @sql;
        
        FETCH NEXT FROM @dropSPCursor INTO @name;
    END
    CLOSE @dropSPCursor;
    DEALLOCATE @dropSPCursor;

    DROP TABLE #SP_NAMES;
END

GO


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


/*********** Script Update Date: 2023-06-20  ***********/
/****** Object:  StoredProcedure [dbo].[DropAllTables]    Script Date: 11/20/2022 12:21:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Name: DropAll.
-- Description:	Drop all Tables and it's related indexes, constrains, keys
-- [== History ==]
-- <2019-08-19> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--EXEC DropAllTables
-- =============================================
CREATE PROCEDURE [dbo].[DropAllTables]
AS
BEGIN
CREATE TABLE #TABLE_NAMES
(
    TableName nvarchar(100)
);

DECLARE @sql nvarchar(MAX);
DECLARE @name nvarchar(100);
DECLARE @dropTableCursor CURSOR;
	/*========= DROP TABLES =========*/
    INSERT INTO #TABLE_NAMES
        (TableName)
    SELECT TABLE_NAME
      FROM INFORMATION_SCHEMA.TABLES
     WHERE TABLE_TYPE = N'BASE TABLE';

       SET @dropTableCursor = CURSOR LOCAL FAST_FORWARD FOR SELECT TableName FROM #TABLE_NAMES;

    OPEN @dropTableCursor;
    FETCH NEXT FROM @dropTableCursor INTO @name;
    WHILE @@FETCH_STATUS = 0
	BEGIN
        -- drop table (by sp).
		EXEC DropTable @name;

		-- drop table (by sql sql script).
        --SET @sql = 'DROP TABLE ' + @name;
        --EXECUTE SP_EXECUTESQL @sql;
        
        FETCH NEXT FROM @dropTableCursor INTO @name;
    END
    CLOSE @dropTableCursor;
    DEALLOCATE @dropTableCursor;

    DROP TABLE #TABLE_NAMES;
END

GO


/*********** Script Update Date: 2023-06-20  ***********/
EXEC DropAllSPs
GO

EXEC DropAllFNs
GO

EXEC DropAllViews
GO

