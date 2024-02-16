/****** Object:  StoredProcedure [dbo].[GetS8x2WetPickUpItems]    Script Date: 1/20/2024 12:29:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE GetS8x2WetPickUpItems
(
  @ProductCode nvarchar(50) = NULL
, @LotNo nvarchar(50) = NULL
, @DoffingDate datetime
)
AS
BEGIN
    SELECT A.ProductCode
         , A.LotNo
         , A.DoffingDate
         , A.DoffNo
         , A.TwistNo
         , A.RowType
         , A.NipPressure
         , A.WPU
         , A.WPUErr
         , A.FirstAmt
         , A.UseAmt
         , A.RestAmt
         , A.ThrowAmt
         , A.Operator
         , A.UpdateDate
      FROM S8x2WetPickupItem A
     WHERE A.LotNo = @LotNo 
       AND A.ProductCode = @ProductCode
       AND DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)) = COALESCE(DATEADD(dd, 0, DATEDIFF(dd, 0, @DoffingDate)), DATEADD(dd, 0, DATEDIFF(dd, 0, A.DoffingDate)))
	   AND A.LotNo IS NOT NULL
     ORDER BY A.DoffingDate, A.DoffNo, A.RowType;

END

GO
