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
