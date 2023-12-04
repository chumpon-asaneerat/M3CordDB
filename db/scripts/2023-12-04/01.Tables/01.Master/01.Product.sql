ALTER TABLE Product ADD DIPProductCode nvarchar(30) NULL;
GO

UPDATE Product
   SET DIPProductCode = ProductCode;
GO

UPDATE Product
   SET DIPProductCode = N'4673'
 WHERE ProductCode = N'1800TW';
GO

INSERT INTO Product(  ProductCode
                    , ProductName
                    , ItemYarn
                    , CordStructure
                    , TreatRoute
                    , TwistSpec
                    , DIPProductCode) 
             VALUES(  N'1800TW'
                    , N'BRAKE HOSE'
                    , N'1620-288-707C-TTS'
                    , N'1800T/1'
                    , N'S-5 → S-1 → S-13 → S -8 → S-24'
                    , N'75.0 ± 15.0 (S) T/M'
                    , N'8335');
GO
