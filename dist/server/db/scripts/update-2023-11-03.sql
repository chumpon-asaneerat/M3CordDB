/*********** Script Update Date: 2023-11-03  ***********/
ALTER TABLE [dbo].[DIPPCCard]
ADD MCCode nvarchar(10);

ALTER TABLE [dbo].[DIPPCCard]
ADD CreateBy nvarchar(100);

ALTER TABLE [dbo].[DIPPCCard]
ADD CreateDate datetime;

ALTER TABLE [dbo].[DIPPCCard]
ADD DoffNo int;

/****** Object:  View [dbo].[DIPPCCardView]    Script Date: 31/10/2566 14:22:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[DIPPCCardView]
AS
    SELECT PC.DIPPCId
         , PC.CustomerId
         , CM.CustomerName
         , PC.ProductCode
         , PD.ProductName
         , PD.ItemYarn
	 , PC.MCCode
	 , PC.DoffNo
         , PD.CordStructure
         , PD.TreatRoute
         , PD.TwistSpec
         , PC.DIPLotNo
         , PC.StartTime
         , PC.EndTime
         , PC.FinishTime
         , PC.FinishFlag
         , PC.DeleteFlag
      FROM DIPPCCard PC 
           LEFT OUTER JOIN Customer CM ON PC.CustomerId = CM.CustomerId
           LEFT OUTER JOIN Product PD ON LTRIM(RTRIM(PC.ProductCode)) = LTRIM(RTRIM(PD.ProductCode))

GO

CREATE PROCEDURE [dbo].[GetDIPPCCardsByMCCode]
(
  @mccode int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , MCCode
	 , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
     FROM DIPPCCardView 
     WHERE MCCode = COALESCE(@mccode, MCCode)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

/****** Object:  StoredProcedure [dbo].[SaveNewDIPPCCard]    Script Date: 31/10/2566 17:12:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SaveNewDIPPCCard] (
  @CustomerId int = NULL out
, @ProductCode nvarchar(30)
, @DIPLotNo nvarchar(30)
, @ItemYarn nvarchar(30)
, @mccode nvarchar(10)
, @doffno int
, @username nvarchar(100)
, @DIPPCId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
       IF EXISTS (SELECT TOP 1 * FROM DIPPCCard WHERE DIPLotNo = @DIPLotNo and DoffNo = @doffno )
        BEGIN
           SET @errNum = 1;
			SET @errMsg = 'This Lot No and Doff No already Set Please Try Again';
        END
        ELSE
        BEGIN
			INSERT INTO DIPPCCard 
		    (
			      CustomerId
                , ProductCode
                , DIPLotNo
                , ItemYarn
				, MCCode
				, DoffNo
				, CreateBy
				, CreateDate
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
			      @CustomerId
                , @ProductCode
                , @DIPLotNo
                , @ItemYarn
				, @mccode
				, @doffno
				, @username
				, getdate()
                , 0
                , 0
			);

			SET @DIPPCId = @@IDENTITY;
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

ALTER PROCEDURE [dbo].[GetProducts]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductId
         , ProductCode
         , ProductName
         , CordStructure
         , TreatRoute
         , TwistSpec
		 , ItemYarn
      FROM Product
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-11-03  ***********/
ALTER PROCEDURE [dbo].[GetDIPPCCardsByMCCode]
(
  @MCCode nvarchar(10) = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , MCCode
	 , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
     FROM DIPPCCardView 
     WHERE MCCode = COALESCE(@mccode, MCCode)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  Table [dbo].[DIPPalletSlip]    Script Date: 11/7/2023 4:43:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIPPalletSlip](
	[PalletId] [int] IDENTITY(1,1) NOT NULL,
	[DIPPCId] [int] NULL,
	[PalletCode] [nvarchar](30) NULL,
	[CreateDate] [datetime] NULL,
	[TwistNo] [nvarchar](100) NULL,
	[Counter] [int] NULL,
	[ActualQty] [decimal](18, 3) NULL,
	[ActualWeight] [decimal](18, 3) NULL,
	[UserName] [nvarchar](100) NULL,
	[PalletStatus] [int] NULL,
 CONSTRAINT [PK_DIPPalletSlip] PRIMARY KEY CLUSTERED 
(
	[PalletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[DIPPalletSlip] ADD  CONSTRAINT [DF_DIPPalletSlip_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  View [dbo].[DIPPCCardView]    Script Date: 11/6/2023 11:52:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER VIEW [dbo].[DIPPCCardView]
AS
    SELECT PC.DIPPCId
         , PC.CustomerId
         , CM.CustomerName
         , PC.ProductCode
         , PD.ProductName
         , PD.ItemYarn
	     , PC.MCCode
	     , PC.DoffNo
         , PD.CordStructure
         , PD.TreatRoute
         , PD.TwistSpec
         , PC.DIPLotNo
         , PC.StartTime
         , PC.EndTime
         , PC.FinishTime
         , PC.FinishFlag
         , PC.DeleteFlag
         , PC.CreateBy
         , PC.CreateDate
      FROM DIPPCCard PC 
           LEFT OUTER JOIN Customer CM ON PC.CustomerId = CM.CustomerId
           LEFT OUTER JOIN Product PD ON LTRIM(RTRIM(PC.ProductCode)) = LTRIM(RTRIM(PD.ProductCode))


GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  View [dbo].[PalletSettingView]    Script Date: 11/7/2023 3:53:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[DIPPalletSlipView]
AS
	SELECT A.PalletId
	     , A.DIPPCId
		 , A.PalletCode
		 , A.CreateDate
         , A.TwistNo
		 , A.[Counter]
		 , A.ActualQty
         , A.ActualWeight
		 , A.UserName
		 , A.PalletStatus
		 , B.CustomerId
		 , B.CustomerName
		 , B.ProductCode
		 , B.ProductName
		 , B.ItemYarn
		 , B.CordStructure
		 , B.TreatRoute
		 , B.TwistSpec
		 , B.DIPLotNo
		 , B.MCCode AS S7MCCode
         , B.DoffNo
	  FROM DIPPalletSlip A 
	  LEFT JOIN DIPPCCardView B ON B.DIPPCId = A.DIPPCId

GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 10/31/2023 15:43:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetProducts
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetCordProducts NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetProducts]
(
  @ProductCode nvarchar(30) = NULL
)
AS
BEGIN
    SELECT ProductId
         , ProductCode
         , ProductName
         , ItemYarn
         , CordStructure
         , TreatRoute
         , TwistSpec
      FROM Product
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  StoredProcedure [dbo].[GetLastDIPPCCard]    Script Date: 11/6/2023 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetLastDIPPCCard
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetLastDIPPCCard NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetLastDIPPCCard]
(
  @MCCode nvarchar(10) = NULL
)
AS
BEGIN
    SELECT TOP 1 
	       DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , MCCode
	     , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
         , CreateBy
         , CreateDate
      FROM DIPPCCardView 
     WHERE MCCode = @MCCode 
	   AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
	   AND (   StartTime IS NULL 
	        OR EndTime IS NULL 
			OR FinishTime IS NULL)
     ORDER BY DIPPCId DESC;

END

GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPPCCard]    Script Date: 11/6/2023 12:41:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPPCCard
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveDIPPCCard] (
  @CustomerId int = NULL out
, @ProductCode nvarchar(30)
, @DIPLotNo nvarchar(30)
, @ItemYarn nvarchar(30)
, @MCCode nvarchar(10)
, @DoffNo int
, @CreateDate datetime
, @CreateBy nvarchar(100)
, @FinishFlag bit
, @DeleteFlag bit
, @DIPPCId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPPCCard WHERE DIPPCId = @DIPPCId)
        BEGIN
            UPDATE DIPPCCard  
               SET CustomerId = @CustomerId
			     , ProductCode = @ProductCode
                 , DIPLotNo = @DIPLotNo
                 , ItemYarn = @ItemYarn
				 , MCCode = @MCCode
				 , DoffNo = @DoffNo
				 , CreateBy = @CreateBy
				 , CreateDate = CreateDate
                 , FinishFlag = @FinishFlag
                 , DeleteFlag = @DeleteFlag
             WHERE DIPPCId = @DIPPCId
        END
        ELSE
        BEGIN
			INSERT INTO DIPPCCard 
		    (
			      CustomerId
                , ProductCode
                , DIPLotNo
                , ItemYarn
				, MCCode
				, DoffNo
				, CreateBy
				, CreateDate
                , FinishFlag
                , DeleteFlag
			)
			VALUES
			(
			      @CustomerId
                , @ProductCode
                , @DIPLotNo
                , @ItemYarn
				, @MCCode
				, @DoffNo
				, @CreateBy
				, @CreateDate
                , @FinishFlag
                , @DeleteFlag
			);

			SET @DIPPCId = @@IDENTITY;
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


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPPCCards]    Script Date: 11/6/2023 12:00:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPPCCards
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPCards NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetDIPPCCards]
(
  @DIPPCId int = NULL
)
AS
BEGIN
    SELECT DIPPCId
         , CustomerId
         , CustomerName
         , ProductCode
         , ProductName
         , ItemYarn
         , MCCode
	     , DoffNo
         , CordStructure
         , TreatRoute
         , TwistSpec
         , DIPLotNo
         , StartTime
         , EndTime
         , FinishTime
         , FinishFlag
         , DeleteFlag
         , CreateBy
         , CreateDate
      FROM DIPPCCardView 
     WHERE DIPPCId = COALESCE(@DIPPCId, DIPPCId)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPDoffNo]    Script Date: 11/6/2023 11:48:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetDIPDoffNo
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC GetDIPDoffNo NULL
-- =============================================
CREATE PROCEDURE [dbo].[GetDIPDoffNo]
(
  @MCCode nvarchar(10)
, @CreateDate datetime
)
AS
DECLARE @lastDoff int
BEGIN
    SELECT @lastDoff = MAX(DoffNo)
      FROM DIPPCCardView
     WHERE MCCode = @MCCode
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @CreateDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)))

    IF (@lastDoff IS NULL OR @lastDoff = 0)
    BEGIN
        SET @lastDoff = 0
    END

    SELECT @lastDoff AS LastDoffNo
END

GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  StoredProcedure [dbo].[SearchDIPPCByLotNo]    Script Date: 11/7/2023 4:40:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchPCTwist1
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchDIPPCByLotNo NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchDIPPCByLotNo]
(
  @DIPLotNo nvarchar(30) = NULL
)
AS
BEGIN
	SELECT *
	  FROM DIPPCCardView
	 WHERE UPPER(LTRIM(RTRIM(DIPLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@DIPLotNo, DIPLotNo))))
     ORDER BY CreateDate, DIPLotNo
END

GO


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  StoredProcedure [dbo].[SaveDIPPalletSlip]    Script Date: 11/7/2023 3:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveDIPPalletSlip
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE [dbo].[SaveDIPPalletSlip] (
  @DIPPCId int
, @PalletCode nvarchar(30)
, @CreateDate datetime
, @TwistNo nvarchar(100)
, @Counter int
, @ActualQty decimal(18, 3)
, @ActualWeight decimal(18, 3)
, @UserName nvarchar(100)
, @PalletStatus int
, @PalletId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastNo int;
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM DIPPalletSlip 
                    WHERE PalletId = @PalletId)
        BEGIN
            UPDATE DIPPalletSlip 
               SET DIPPCId = @DIPPCId
                 , PalletCode = @PalletCode
                 , CreateDate = @CreateDate
                 , TwistNo = @TwistNo
                 , [Counter] = @Counter
                 , ActualQty = @ActualQty
                 , ActualWeight = @ActualWeight
                 , UserName = @UserName
                 , PalletStatus = @PalletStatus
             WHERE PalletId = @PalletId
        END
        ELSE
        BEGIN
			INSERT INTO DIPPalletSlip
		    (
                  DIPPCId
                , PalletCode
                , CreateDate
                , TwistNo
                , [Counter]
                , ActualQty
                , ActualWeight
                , UserName
                , PalletStatus
			)
			VALUES
			(
                  @DIPPCId
                , @PalletCode
                , @CreateDate
                , @TwistNo
                , @Counter
                , @ActualQty
                , @ActualWeight
                , @UserName
                , @PalletStatus
			);
        END

        SET @PalletId = @@IDENTITY;

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


/*********** Script Update Date: 2023-11-03  ***********/
/****** Object:  StoredProcedure [dbo].[SearchDIPPalletSlips]    Script Date: 11/7/2023 3:51:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SearchPalletSettings
-- [== History ==]
-- <2023-04-26> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- EXEC SearchDIPPalletSlips NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchDIPPalletSlips]
(
  @DIPLotNo nvarchar(30) = NULL
, @beginDate datetime = NULL
, @endDate datetime = NULL
, @ProductCode nvarchar(30) = NULL
, @PalletStatus int = NULL
)
AS
BEGIN
	SELECT *
	  FROM DIPPalletSlipView
	 WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
       AND UPPER(LTRIM(RTRIM(DIPLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@DIPLotNo, DIPLotNo))))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)) >= COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @beginDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)))
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)) <= COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @endDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, CreateDate)))
	   AND PalletStatus = COALESCE(@PalletStatus, PalletStatus)
     ORDER BY CreateDate, DIPLotNo
END

GO


/*********** Script Update Date: 2023-11-03  ***********/
/*
INSERT INTO PalletCode(MCCode, [Year], LastId) VALUES('S-9-1', 2023, 0);
INSERT INTO PalletCode(MCCode, [Year], LastId) VALUES('S-9-2', 2023, 0);
GO
*/

/*********** Script Update Date: 2023-11-03  ***********/
DELETE FROM DIPMC;
GO

INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-7-1', N'S-7', 1, 130);
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-7-2', N'S-7', 1, 150);
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-8-1', N'S-8', 1, 130);
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-8-2', N'S-8', 1, 150);
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-9-1', N'S-9', 1, 130);
INSERT INTO DIPMC(MCCode, ProcessName, StartCore, EndCore) VALUES(N'S-9-2', N'S-9', 1, 150);
GO

