
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'0', N'0', N'PURE WATER', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'23', N'23', N'Na OH ( 100 )', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM1-6100-0001', N'24', N'RESORCINOL (100%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM1-6100-0003', N'22', N'FORMALINE (37.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM1-6100-0010', N'20', N'AEROZOL-OT(75%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM1-6100-0017', NULL, N'Sodium Hydroxide(NaOH 98%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0004', N'14', N'SUMIKANOL S-700 (65.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0006', NULL, N'TC-30 (29.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0007', NULL, N'VANILLEX RN', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0008', N'27', N'CHLOROPRENE POLYMER LATEX 400 (50.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0009', N'13', N'DENA BOND (20.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0010', NULL, N'DENABOND LA-S (30.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0011', N'29', N'NA-13', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0012', NULL, N'CHLOROPRENE LD650', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0014', N'9', N'DENACOL EX-614B (100%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0015', N'6', N'V-9625 (38.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0016', N'12', N'PYRATEX  FS (SN-700) (40.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0019', NULL, N'NIPOL LATEX   LX 110 (40.5%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0020', N'10', N'NIPOL LATEX  LX 111 A (52.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0021', NULL, N'NER 010 (100%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0022', NULL, N'SANDET  EN (25.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0023', NULL, N'TDC-8 (100%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0025', N'18', N'SILICONE FN-5', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0026', N'17', N'TC-6400 (42.0%)', N'Y')
GO
INSERT [dbo].[ChemicalMaster] ([ChemicalCode], [ChemicalNo], [ChemicalName], [UseFlag]) VALUES (N'3DM2-6100-0027', N'1', N'NIPOL LX2518FS (40.5%)', N'Y')
GO
SET IDENTITY_INSERT [dbo].[SolutionRecipe] ON 
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (1, 0, N'CT-7-I 27.5%', N'EPOXY', N'FINAL', NULL, NULL, N'P671TT', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (2, 0, N'CT-7-I 27.5%', N'EPOXY', N'FINAL', NULL, NULL, N'P1501T', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (3, 0, N'PX 03 13%', N'PL', N'RF', N'FINAL', NULL, N'PX-03', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (4, 9, N'PX 03 5% +FN 5 2%', N'PL', N'RF', N'FINAL', NULL, N'P1100TT', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (5, 9, N'KT-02 1.3%', N'E-SOLUTION', NULL, NULL, NULL, N'P1100TT', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (6, 0, N'PX 03  5%', N'PL', N'RF', N'FINAL', NULL, N'P1671T', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (7, 0, N'KT-02 1.3%', N'E-SOLUTION', NULL, NULL, NULL, N'P1671T', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (8, 12, N'AX-09PV3 V1.  2.5%', N'RF', N'RFL', N'P-RFL', NULL, N'P1670T1R', CAST(100.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (9, 0, N'MX520D Rev3  10%', N'RFL', N'P-RFL', NULL, NULL, N'KT9S71', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (10, 7, N'MX520D Rev3  10%', N'RFL', N'P-RFL', NULL, NULL, N'KT3R16', CAST(100.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (11, 11, N'MX-03BR  12%', N'SF', N'SFL', N'FINAL', NULL, N'P1402TRH', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (12, 10, N'ISO rev.3 (10%)', N'FINAL', NULL, NULL, NULL, N'P1100ZFT', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (13, 10, N'KT-02 1.3%', N'E-SOLUTION', NULL, NULL, NULL, N'P1100ZFT', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (14, 0, N'AX-09PV3 V7. 10.0%', N'RF', N'RFL', N'FINAL', NULL, N'4673', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (15, 0, N'AX-09PV3 V7. 10.0%', N'RF', N'RFL', N'FINAL', NULL, N'8335', CAST(1000.00 AS Decimal(6, 2)))
GO
INSERT [dbo].[SolutionRecipe] ([SolutionId], [ProductId], [SolutionName], [Recipe1], [Recipe2], [Recipe3], [Recipe4], [Remark], [QtySpec]) VALUES (16, 0, N'MX 03A (5%)', N'RF', N'RFL', N'P-RFL', N'FINAL', N'P1003', CAST(1000.00 AS Decimal(6, 2)))
GO
SET IDENTITY_INSERT [dbo].[SolutionRecipe] OFF
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'PL', 1, N'C', N'0', CAST(71.3000 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'RF', 1, N'C', N'0', CAST(86.6500 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'FINAL ', 1, N'C', N'0', CAST(696.9600 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (5, N'E-SOLUTION', 1, N'C', N'0', CAST(987.1200 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'RF', 1, N'C', N'0', CAST(1.4010 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'RFL', 1, N'C', N'0', CAST(6.3590 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'P-RFL', 1, N'C', N'0', CAST(84.9400 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'RFL', 1, N'C', N'0', CAST(14.7558 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'P-RFL', 1, N'C', N'13', CAST(12.5000 AS Decimal(8, 4)), CAST(2.5000 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'SF', 1, N'C', N'0', CAST(252.6100 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'SFL', 1, N'C', N'0', CAST(135.8600 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'FINAL', 1, N'C', N'0', CAST(243.9400 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'FINAL', 3, N'R', N'PL', CAST(202.9000 AS Decimal(8, 4)), CAST(40.4900 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'FINAL', 4, N'R', N'RF', CAST(100.1400 AS Decimal(8, 4)), CAST(9.4600 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'PL', 2, N'C', N'13', CAST(62.5000 AS Decimal(8, 4)), CAST(12.5000 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'RF', 2, N'C', N'23', CAST(0.0900 AS Decimal(8, 4)), CAST(0.0900 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'FINAL ', 2, N'C', N'18', CAST(2.0000 AS Decimal(8, 4)), CAST(1.0000 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (5, N'E-SOLUTION', 2, N'C', N'23', CAST(0.0500 AS Decimal(8, 4)), CAST(0.0500 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'RF', 2, N'C', N'23', CAST(0.2670 AS Decimal(8, 4)), CAST(0.0027 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'RFL', 2, N'C', N'6', CAST(2.1400 AS Decimal(8, 4)), CAST(0.1833 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'P-RFL', 2, N'C', N'13', CAST(3.0120 AS Decimal(8, 4)), CAST(0.6024 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'RFL', 2, N'C', N'23', CAST(0.0149 AS Decimal(8, 4)), CAST(0.0149 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'P-RFL', 2, N'C', N'0', CAST(57.1000 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'SF', 2, N'C', N'23', CAST(0.3200 AS Decimal(8, 4)), CAST(0.3200 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'SFL', 2, N'C', N'10', CAST(62.6200 AS Decimal(8, 4)), CAST(32.5600 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'FINAL', 2, N'C', N'13', CAST(144.8800 AS Decimal(8, 4)), CAST(28.9800 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'RFL', 4, N'R', N'RF', CAST(1.9230 AS Decimal(8, 4)), CAST(0.1807 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'PL', 3, N'C', N'1', CAST(69.1000 AS Decimal(8, 4)), CAST(27.9900 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'RF', 3, N'C', N'24', CAST(7.0000 AS Decimal(8, 4)), CAST(7.0000 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (5, N'E-SOLUTION', 3, N'C', N'20', CAST(0.3300 AS Decimal(8, 4)), CAST(0.2500 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'RF', 3, N'C', N'24', CAST(0.1330 AS Decimal(8, 4)), CAST(0.1330 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'RFL', 3, N'C', N'27', CAST(1.6270 AS Decimal(8, 4)), CAST(0.8133 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'P-RFL', 3, N'C', N'0', CAST(0.6884 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'RFL', 3, N'C', N'14', CAST(1.9013 AS Decimal(8, 4)), CAST(1.2359 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'P-RFL', 3, N'C', N'18', CAST(0.4000 AS Decimal(8, 4)), CAST(0.2000 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'SF', 3, N'C', N'14', CAST(29.1200 AS Decimal(8, 4)), CAST(18.9300 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'SFL', 3, N'C', N'12', CAST(80.4000 AS Decimal(8, 4)), CAST(32.5600 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'FINAL', 3, N'C', N'0', CAST(32.9200 AS Decimal(8, 4)), NULL)
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (4, N'RF', 4, N'C', N'22', CAST(6.4000 AS Decimal(8, 4)), CAST(2.3700 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (5, N'E-SOLUTION', 4, N'C', N'9', CAST(12.5000 AS Decimal(8, 4)), CAST(12.5000 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'RF', 4, N'C', N'22', CAST(0.1220 AS Decimal(8, 4)), CAST(0.0450 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'P-RFL', 4, N'C', N'17', CAST(0.2151 AS Decimal(8, 4)), CAST(0.0904 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'RFL', 4, N'C', N'22', CAST(0.1489 AS Decimal(8, 4)), CAST(0.0551 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'SF', 4, N'C', N'22', CAST(7.0500 AS Decimal(8, 4)), CAST(2.6100 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'FINAL', 4, N'C', N'17', CAST(10.2900 AS Decimal(8, 4)), CAST(4.3200 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'RFL', 5, N'C', N'29', CAST(13.1791 AS Decimal(8, 4)), CAST(6.1942 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (8, N'P-RFL', 5, N'R', N'RFL', CAST(12.0490 AS Decimal(8, 4)), CAST(1.1773 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (10, N'P-RFL', 4, N'R', N'RFL', CAST(30.0000 AS Decimal(8, 4)), CAST(7.5001 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'SFL', 4, N'R', N'SF', CAST(289.1000 AS Decimal(8, 4)), CAST(21.8600 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeDetailSpec] ([SolutionID], [Recipe], [MixOrder], [ChemicalType], [ChemicalNo], [ChemWet], [ChemDry]) VALUES (11, N'FINAL', 5, N'R', N'SFL', CAST(567.9800 AS Decimal(8, 4)), CAST(86.9800 AS Decimal(8, 4)))
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (4, N'PL', N'20 ± 2', N'6.0 ± 1.0', N'15 ~ 30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (4, N'RF', N'25 ± 2', N'2.0 ± 0.5', N'25 ~ 35', NULL, NULL, N'7.3~7.8', N'1.0~1.6', N'7.6~8.4', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (4, N'FINAL ', N'20 + 2', N'24.0', N'15 ~ 50', 15, N'FN-5 is added after 24h aging  before dipping 30 minute', N'9.7~10.7', N'1.1~2.0', N'4.4~5.0', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (5, N'E-SOLUTION', NULL, NULL, N'1600~3000', 7, NULL, N'9.7~10.7', N'1.0 ~1.3', N'1.1~1.5', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (8, N'RF', N'25.0 ±  3.0', N'6.0 ± 0.3', N'25 ~ 35', NULL, NULL, N'5.87 ~ 8.75', N'0.77 ~ 1.73', N'7.79 ~ 9.87', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (8, N'RFL', N'25.0 ±  3.0', N'6.0 ± 1.0', N'15 ~ 25', NULL, NULL, N'7.96 ~ 9.32', N'1.20 ~ 1.84', N'14.44 ~ 15.24', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (8, N'P-RFL', N'25.0 ±  3.0', N'6.0 ± 1.0', N'15 ~ 25', 7, NULL, N'8.86 ~ 11.34', N'0.72 ~ 1.60', N'2.27 ~ 2.59', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (10, N'RFL', N'25.0 ±  3.0', N'6.0 ± 1.0', N'15 ~ 25', NULL, NULL, N'7.05  ~  8.01', N'2.16  ~  3.42', N'24.23  ~  28.01', N'6.98  ~  8.00', N'2.01  ~  3.51', N'24.23  ~  28.01')
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (10, N'P-RFL', N'25.0 ±  3.0', N'24.0 + 1.0', N'15 ~ 25', 7, N'FN-5 is added after 24h aging  before dipping 30 minute', N'9.77  ~  10.85', N'1.17  ~  2.37', N'9.50  ~  10.64', N'9.63  ~  11.01', N'1.37  ~  2.15', N'9.68  ~  10.52')
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (11, N'SF', N'25.0 ± 3.0', N'4.0 ± 0.3', N'25 ~ 35', NULL, NULL, N'6.10  ~  7.78', N'1.15  ~  1.51', N'7.18  ~  7.78', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (11, N'SFL', N'25.0 ± 3.0', N'12.0 ～ 24.0', N'15 ~ 50', NULL, NULL, N'6.97  ~  8.17', N'1.25  ~  2.57 ', N'14.96  ~  15.68', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (11, N'FINAL', N'25.0 ± 3.0', N'12.0 ± 1.0', N'15 ~ 50', 10, NULL, N'9.83  ~  10.91', N'2.18  ~  2.90', N'11.61  ~  12.21', NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (12, N'FINAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SolutionRecipeQASpec] ([SolutionID], [Recipe], [AgeingTemp], [AgeingTime], [Homomixer], [LifeDay], [Remark], [pH_Before], [Viscosity_Before], [TSC_Before], [pH_After], [Viscosity_After], [TSC_After]) VALUES (13, N'E-SOLUTION', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
