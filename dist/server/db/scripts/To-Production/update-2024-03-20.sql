/*********** Script Update Date: 2024-03-20  ***********/
/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 3/22/2024 1:43:21 ******/
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
, @ItemYarn nvarchar(30) = NULL
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
		 , DIPProductCode
      FROM Product
     WHERE UPPER(LTRIM(RTRIM(ProductCode))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductCode, ProductCode))))
       AND UPPER(LTRIM(RTRIM(ItemYarn))) = UPPER(LTRIM(RTRIM(COALESCE(@ItemYarn, ItemYarn))))
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2024-03-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveProduct]    Script Date: 3/22/2024 1:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveProduct
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
ALTER PROCEDURE [dbo].[SaveProduct] (
  @ProductCode nvarchar(30)
, @ProductName nvarchar(100)
, @ItemYarn nvarchar(30)
, @CordStructure nvarchar(100)
, @TreatRoute nvarchar(100) = NULL
, @TwistSpec nvarchar(100) = NULL
, @DIPProductCode nvarchar(30) = NULL
, @ProductId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Product WHERE ProductId = @ProductId)
        BEGIN
            UPDATE Product 
               SET ProductCode = @ProductCode
                 , ProductName = @ProductName
                 , ItemYarn = @ItemYarn
                 , CordStructure = @CordStructure
                 , TreatRoute = @TreatRoute
                 , TwistSpec = @TwistSpec
                 , DIPProductCode = @DIPProductCode
             WHERE ProductId = @ProductId
        END
        ELSE
        BEGIN
			INSERT INTO Product
		    (
                  ProductCode
                , ProductName
                , ItemYarn
                , CordStructure
                , TreatRoute
                , TwistSpec
                , DIPProductCode
			)
			VALUES
			(
                  @ProductCode
                , @ProductName
                , @ItemYarn
                , @CordStructure
                , @TreatRoute
                , @TwistSpec
                , @DIPProductCode
			);

			SET @ProductId = @@IDENTITY;
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


/*********** Script Update Date: 2024-03-20  ***********/
/****** Object:  StoredProcedure [dbo].[SaveUser]    Script Date: 3/22/2024 5:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveUser
-- [== History ==]
-- <2022-08-22> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
--exec SaveUser 20, N'User 6', N'user6', N'123';     -- Save User with RoleId = 20 (user)
-- =============================================
CREATE PROCEDURE [dbo].[SaveUser] (
  @RoleId int
, @FullName nvarchar(100)
, @UserName nvarchar(50)
, @Password nvarchar(50)
, @UserId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
DECLARE @LastUpdated datetime;
	BEGIN TRY
        -- Gets Current DateTime
        SET @LastUpdated = GETDATE();

		IF ((@UserId IS NULL)
            OR
            NOT EXISTS 
			(
				SELECT * 
				  FROM UserInfo
				 WHERE UserId = @UserId
			)
		   )
		BEGIN
			INSERT INTO UserInfo
			(
				  RoleId 
				, FullName 
				, UserName 
				, [Password] 
				, Active
                , LastUpdated 
			)
			VALUES
			(
				  @RoleId 
				, @FullName 
				, @UserName 
				, @Password
                , 1
                , @LastUpdated
			);

            SET @UserId = @@IDENTITY;
		END
		ELSE
		BEGIN
			UPDATE UserInfo
			   SET FullName = @FullName
                 , RoleId = @RoleId
                 , UserName = @UserName
                 , [Password] = @Password
                 , LastUpdated = @LastUpdated
			 WHERE UserId = @UserId
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

