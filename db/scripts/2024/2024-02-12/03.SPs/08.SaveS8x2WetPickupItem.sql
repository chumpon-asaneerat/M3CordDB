/****** Object:  StoredProcedure [dbo].[SaveS8x2WetPickupItem]    Script Date: 1/20/2024 13:00:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SaveS8x2WetPickupItem] (
  @ProductCode nvarchar(30) 
, @LotNo nvarchar(30) 
, @DoffingDate datetime 
, @DoffingNo int
, @TwistNo int
, @RowType int
, @NipPressure nvarchar(50)
, @WPU decimal(18, 3) 
, @WPUErr decimal(18, 3) 
, @WPUValue decimal(18, 3) 
, @FirstAmt decimal(18, 3) 
, @UseAmt decimal(18, 3) 
, @RestAmt decimal(18, 3) 
, @ThrowAmt decimal(18, 3) 
, @Operator nvarchar (100) 
, @UpdateDate datetime 
, @Remark nvarchar (200) 
, @errNum as int = 0 out
, @errMsg as nvarchar(MAX) = N'' out)
AS
BEGIN
	BEGIN TRY
        IF EXISTS (SELECT TOP 1 * 
                     FROM S8x2WetPickupItem 
                    WHERE LotNo = @LotNo 
                      AND ProductCode = @ProductCode
                      AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
                      AND DoffNo = @DoffingNo
                      AND TwistNo = @TwistNo
                      AND RowType = @RowType
                  )
        BEGIN
            UPDATE S8x2WetPickupItem 
               SET ProductCode = @ProductCode
                 , LotNo = @LotNo
                 , DoffingDate = @DoffingDate
                 , DoffNo = @DoffingNo
                 , TwistNo = @TwistNo
                 , RowType = @RowType
                 , NipPressure = @NipPressure
                 , WPU = @WPU
                 , WPUErr = @WPUErr
                 , WPUValue = @WPUValue
                 , FirstAmt = @FirstAmt
                 , UseAmt = @UseAmt
                 , RestAmt = @RestAmt
                 , ThrowAmt = @ThrowAmt
                 , Operator = @Operator
                 , UpdateDate = @UpdateDate
                 , Remark = @Remark
             WHERE LotNo = @LotNo 
               AND ProductCode = @ProductCode
               AND DATEADD(dd, 0, DATEDIFF(dd, 0, DoffingDate)) = DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate))
               AND DoffNo = @DoffingNo
               AND TwistNo = @TwistNo
               AND RowType = @RowType
        END
        ELSE
        BEGIN
			INSERT INTO S8x2WetPickupItem
		    (
                  ProductCode
                , LotNo
                , DoffingDate
                , DoffNo
                , TwistNo
                , RowType
                , NipPressure
                , WPU
                , WPUErr
                , WPUValue
                , FirstAmt
                , UseAmt
                , RestAmt
                , ThrowAmt
                , Operator
                , UpdateDate
                , [Remark]
			)
			VALUES
			(
                  @ProductCode
                , @LotNo
                , @DoffingDate
                , @DoffingNo
                , @TwistNo
                , @RowType
                , @NipPressure
                , @WPU
                , @WPUErr
                , @WPUValue
                , @FirstAmt
                , @UseAmt
                , @RestAmt
                , @ThrowAmt
                , @Operator
                , @UpdateDate
                , @Remark
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
