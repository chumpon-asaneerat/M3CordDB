/*********** Script Update Date: 2023-11-10  ***********/
/****** Object:  Table [dbo].[CustomerProduct]    Script Date: 11/19/2023 15:58:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerProduct](
	[ProductCode] [nvarchar](30) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[ServiceLifeMonth] [int] NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_CustomerProduct] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC,
	[CustomerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/*********** Script Update Date: 2023-11-10  ***********/
/****** Object:  StoredProcedure [dbo].[GetProductsByCustomerName]    Script Date: 11/7/2023 20:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetProductsByCustomerName]
(
  @CustomerName nvarchar(100) = NULL
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
     WHERE ProductCode IN 
	 (
		SELECT ProductCode 
		  FROM CustomerProduct
		 WHERE UPPER(LTRIM(RTRIM(CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, CustomerName))))
	 )
     ORDER BY ProductCode;

END

GO


/*********** Script Update Date: 2023-11-10  ***********/
/****** Object:  StoredProcedure [dbo].[GetCustomers]    Script Date: 11/19/2023 15:23:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Chumpon Asaneerat
-- Description:	GetCustomers
-- [== History ==]
-- <2022-08-20> :
--	- Stored Procedure Created.
--
-- [== Example ==]
--
-- =============================================
ALTER PROCEDURE [dbo].[GetCustomers]
(
  @unused nvarchar(100) = NULL
)
AS
BEGIN
	SELECT *
	  FROM Customer
     ORDER BY CustomerName
END



/*********** Script Update Date: 2023-11-10  ***********/
/****** Object:  StoredProcedure [dbo].[GetDIPPCCardsByMCCode]    Script Date: 11/7/2023 20:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetDIPPCCardsByMCCode]
(
  @mccode nvarchar(30) = NULL
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
     WHERE MCCode = COALESCE(@mccode, MCCode)
       AND (DeleteFlag IS NULL OR DeleteFlag = 0)
       AND (FinishFlag IS NULL OR FinishFlag = 0)
     ORDER BY DIPPCId;

END

GO


/*********** Script Update Date: 2023-11-10  ***********/
/****** Object:  StoredProcedure [dbo].[GetPCCards]    Script Date: 11/19/2023 15:43:22 ******/
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
-- EXEC GetPCCards NULL
-- =============================================
ALTER PROCEDURE [dbo].[GetPCCards]
(
  @CustomerName nvarchar(150) = NULL
, @ProductLotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT A.PCId
         , A.PINo
         , A.PCDate
         , A.CustomerId
         , A.CustomerName
         , A.ProductCode
         , A.ProductName
         , A.ItemYarn
         , A.CordStructure
         , A.TreatRoute
         , A.TwistSpec
         , A.ProductLotNo
         , A.TargetQty
		 , B.ActualQty
         , A.FinishFlag
         , A.DeleteFlag
		 , B.FinishFlag AS Twist1FinishFlag
		 , B.DeleteFlag AS Twist1DeleteFlag
      FROM PCCardView A 
	  LEFT OUTER JOIN PCTwist1 B ON (B.PCId = A.PCId)
	 WHERE UPPER(LTRIM(RTRIM(A.CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, A.CustomerName))))
       AND UPPER(LTRIM(RTRIM(A.ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, A.ProductLotNo))))
       AND (A.DeleteFlag IS NULL OR A.DeleteFlag = 0)
       AND (A.FinishFlag IS NULL OR A.FinishFlag = 0)
       AND (B.DeleteFlag IS NULL OR B.DeleteFlag = 0)
       AND (B.FinishFlag IS NULL OR B.FinishFlag = 0)
	   --AND A.TargetQty > B.ActualQty
     ORDER BY PCDate;

END

GO


/*********** Script Update Date: 2023-11-10  ***********/
/****** Object:  StoredProcedure [dbo].[SearchPCCards]    Script Date: 11/19/2023 15:43:22 ******/
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
-- EXEC SearchPCCards NULL
-- =============================================
CREATE PROCEDURE [dbo].[SearchPCCards]
(
  @CustomerName nvarchar(150) = NULL
, @ProductLotNo nvarchar(30) = NULL
)
AS
BEGIN
    SELECT A.PCId
         , A.PINo
         , A.PCDate
         , A.CustomerId
         , A.CustomerName
         , A.ProductCode
         , A.ProductName
         , A.ItemYarn
         , A.CordStructure
         , A.TreatRoute
         , A.TwistSpec
         , A.ProductLotNo
         , A.TargetQty
		 , B.ActualQty
         , A.FinishFlag
         , A.DeleteFlag
		 , B.FinishFlag AS Twist1FinishFlag
		 , B.DeleteFlag AS Twist1DeleteFlag
      FROM PCCardView A 
	  LEFT OUTER JOIN PCTwist1 B ON (B.PCId = A.PCId)
	 WHERE UPPER(LTRIM(RTRIM(A.CustomerName))) = UPPER(LTRIM(RTRIM(COALESCE(@CustomerName, A.CustomerName))))
       AND UPPER(LTRIM(RTRIM(A.ProductLotNo))) = UPPER(LTRIM(RTRIM(COALESCE(@ProductLotNo, A.ProductLotNo))))
       AND (A.DeleteFlag IS NULL OR A.DeleteFlag = 0)
       AND (B.DeleteFlag IS NULL OR B.DeleteFlag = 0)
       --AND (A.FinishFlag IS NULL OR A.FinishFlag = 0)
       --AND (B.FinishFlag IS NULL OR B.FinishFlag = 0)
     ORDER BY PCDate;

END

GO


/*********** Script Update Date: 2023-11-10  ***********/
INSERT INTO Customer(CustomerName) 
  VALUES
  ('TGRT'),
  ('BREAK INDIA'),
  ('NIPPON FELT'),
  ('NICHIRIN VIETNAM');
GO

INSERT INTO CustomerProduct(CustomerName, ProductCode, ServiceLifeMonth, [Remark]) 
  VALUES
  ('TGRT',             'P1402TRH',  6, NULL),
  ('BSCBF',            'KT3S71',    6, NULL),
  ('BS Japan',         'KT3R16',    6, NULL),
  ('NICHIRIN',         '1800TW',   12, NULL),
  ('NICHIRIN',         '1800TW-1', 12, NULL),
  ('NICHIRIN VIETNAM', '1800TW',   12, NULL),
  ('NICHIRIN VIETNAM', '1800TW-1', 12, NULL),
  ('KOSEN',            'P1670T1R',  6, NULL),
  ('KOSEN',            'H1671T',   12, NULL),
  ('KOSEN',            'P1671T',    6, NULL),
  ('KOSEN',            'P1671TT',   6, NULL),
  ('KOSEN',            'P1100TT',   6, NULL),
  ('FLEXITECH',        'P1100ZFT', 12, NULL),
  ('BREAK INDIA',      'P1100BI',   6, NULL),
  ('NIPPON FELT',      '2220ABT',   6, NULL),
  ('NIPPON FELT',      '3220ABT',   6, NULL),
  ('PT SEIWA',         'R10023',   12, N'เบอร์ชุดการผลิต'),
  ('BANDO',            '9A1100L',  12, N'เบอร์ชุดการผลิต'),
  ('BANDO',            '9A0663L',  12, N'เบอร์ชุดการผลิต'),
  ('BANDO',            '9H0663SL', 12, N'เบอร์ชุดการผลิต'),
  ('BANDO',            '9H-0663L', 12, N'เบอร์ชุดการผลิต');
GO

