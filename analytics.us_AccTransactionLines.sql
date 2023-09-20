CREATE OR ALTER  VIEW [analytics].[us_AccTransactionLines] AS
WITH AccTransactionLines AS (
    SELECT
        [AL_PK]
        ,[AL_A9_VATClass]
        ,[AL_AC]
        ,[AL_AG]
        ,[AL_AG_PercentOf]
        ,[AL_AH]
        ,[AL_AT]
        ,[AL_AW]
        ,[AL_AutoVersion]
        ,[AL_Desc]
        ,[AL_ExchangeRate]
        ,[AL_ExportBatchNumber]
        ,[AL_ExportReverseBatchNumber]
        ,[AL_GB]
        ,[AL_GB_TaxBranch]
        ,[AL_GC]
        ,[AL_GE]
        ,CAST([AL_GSTVAT] as numeric) as AL_GSTVAT
        ,[AL_GSTVATBasis]
        ,CAST([AL_GSTVATExtra] as numeric) as AL_GSTVATExtra
        ,[AL_GovtChargeCode]
        ,[AL_InputGSTVATRecoverable]
        ,[AL_IsFinalCharge]
        ,[AL_JBB]
        ,[AL_JH]
        ,CAST([AL_LineAmount] as numeric) as AL_LineAmount
        ,[AL_LineType]
        ,[AL_OH]
        ,CAST([AL_OSAmount] as numeric) as AL_OSAmount
        ,CAST([AL_OSUnitPrice] as numeric) as AL_OSUnitPrice
        ,[AL_PercentageOfPeriod]
        ,[AL_PlaceOfSupply]
        ,[AL_PlaceOfSupplyType]
        ,[AL_PostDate]
        ,[AL_PostPeriod]
        ,[AL_PostToGL]
        ,[AL_PreventInvoicePrintGrouping]
        ,[AL_RX_NKTransactionCurrency]
        ,[AL_RevRecognitionType]
        ,[AL_ReverseDate]
        ,[AL_ReversePeriod]
        ,[AL_ReverseToGL]
        ,[AL_Sequence]
        ,[AL_SupplyType]
        ,[AL_SystemCreateTimeUtc]
        ,[AL_SystemCreateUser]
        ,[AL_SystemLastEditTimeUtc]
        ,[AL_SystemLastEditUser]
        ,[AL_TaxDate]
        ,[AL_TaxExtraRateDenominator]
        ,[AL_TaxExtraRateNumerator]
        ,[AL_TaxRateDenominator]
        ,[AL_TaxRateNumerator]
        ,CAST([AL_UnitPrice] as numeric) as AL_UnitPrice
        ,[AL_UnitQty]
        ,CAST([AL_WithholdingTax] as numeric) as AL_WithholdingTax
    FROM [cleaned].[us_AccTransactionLines]
)
SELECT * FROM AccTransactionLines;
GO
