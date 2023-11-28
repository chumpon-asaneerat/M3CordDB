/****** Object:  StoredProcedure [dbo].[SaveCustomer]    Script Date: 11/26/2022 1:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	SaveCustomer
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- 
-- =============================================
CREATE PROCEDURE SaveCustomer (
  @CustomerName nvarchar(100)
, @CustomerId int = NULL out
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * FROM Customer WHERE CustomerId = @CustomerId)
        BEGIN
            UPDATE Customer 
               SET CustomerName = @CustomerName
             WHERE CustomerId = @CustomerId
        END
        ELSE
        BEGIN
			INSERT INTO Customer
			(
                   CustomerName
			)
			VALUES
			(
                   @CustomerName
			);

            SET @CustomerId = @@IDENTITY;
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
