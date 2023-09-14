CREATE VIEW cleaned.AccTransactionHeader AS
WITH AccTransactionHeader AS (
    SELECT
      [AH_Ledger]
      ,[AH_TransactionType]
      ,[AH_ComplianceSubType]
      ,[AH_TransactionNum]
      ,CAST([AH_TransactionCount] as numeric) as AH_TransactionCount
      ,[AH_TransactionReference]
      ,[AH_Desc]
      ,[AH_InvoiceDate]
      ,[AH_DueDate]
      ,CAST([AH_InvoiceAmount] as numeric) as AH_InvoiceAmount
      ,CAST([AH_GSTAmount] as numeric) as AH_GSTAmount
      ,CAST([AH_WithholdingTax] as numeric) as AH_WithholdingTax
      ,CAST([AH_OSTotal] as numeric) as AH_OSTotal
      ,[AH_RX_NKTransactionCurrency]
      ,[AH_ExchangeRate]
      ,[AH_AgePeriod]
      ,[AH_PostPeriod]
      ,[AH_PostDate]
      ,[AH_TransactionCategory]
      ,[AH_ChequeOrReference]
      ,[AH_ReceiptType]
      ,[AH_CashBasisGSTIndicator]
      ,[AH_CashBasisGSTRealisedToGL]
      ,[AH_ChequeDrawer]
      ,[AH_DrawerBank]
      ,[AH_DrawerBranch]
      ,[AH_InvoiceApproved]
      ,[AH_ConsolidatedInvoiceRef]
      ,[AH_FullyPaidDate]
      ,[AH_InvoicePrinted]
      ,[AH_IsCancelled]
      ,[AH_DateClearedInCashbook]
      ,[AH_NotAllocated]
      ,CAST([AH_OutstandingAmount] as numeric) as AH_OutstandingAmount
      ,[AH_PostedToEFT]
      ,[AH_PostToGL]
      ,[AH_ReceiptBatchNo]
      ,[AH_TransactionCreatedByMatching]
      ,[AH_InvoiceTerm]
      ,CAST([AH_InvoiceTermDays] as numeric) as AH_InvoiceTermDays
      ,[AH_RequisitionDate]
      ,[AH_RequisitionStatus]
      ,CAST([AH_NumberOfSupportingDocuments] as numeric) as AH_NumberOfSupportingDocuments
      ,[AH_ExportBatchNumber]
      ,[AH_PostedInternal]
      ,[AH_POST1]
      ,[AH_POST2]
      ,[AH_POST3]
      ,[AH_POST4]
      ,[AH_AB]
      ,[AH_OH]
      ,[AH_OA_InvoiceAddressOverride]
      ,[AH_OC_InvoiceContactOverride]
      ,[AH_JH]
      ,[AH_GB]
      ,[AH_GC]
      ,[AH_GE]
      ,[AH_AG]
      ,[AH_TransactionBelongsToGroup]
      ,[AH_AH_InvoiceStatement]
      ,[AH_SystemCreateTimeUtc]
      ,[AH_SystemCreateUser]
      ,[AH_SystemLastEditTimeUtc]
      ,[AH_SystemLastEditUser]
      ,[AH_AgreedPaymentMethodOverride]
      ,[AH_ComplianceDocumentDate]
      ,[AH_GS_NKAuditedBy]
      ,[AH_GS_NKCashier]
      ,[AH_InvoicePaymentReferenceCode]
      ,CAST([AH_DigitalSignature_COMPRESSED] as integer) as AH_DigitalSignature_COMPRESSED
      ,CAST([AH_LocalTaxAmountOtherTaxes] as numeric) as AH_LocalTaxAmountOtherTaxes
      ,CAST([AH_OSTaxAmountOtherTaxes] as numeric) as AH_OSTaxAmountOtherTaxes
      ,[AH_AutoVersion]
      ,[AH_DocumentReceivedDate]
      ,[AH_MatchStatus]
      ,[AH_MatchStatusReasonCode]
      ,[AH_OriginalInvoiceDate]
      ,[AH_OriginalTransactionNum]
      ,[AH_PlaceOfSupply]
      ,[AH_PlaceOfSupplyType]
      ,[AH_XD_ComplianceBook]
      ,[AH_LocalTotal]
      ,[AH_JobNumber]
      ,[AH_OriginalReferenceEndDate]
      ,[AH_OriginalReferenceStartDate]
      ,[AH_GB_TaxBranch]
      ,[AH_GovernmentAllocatedID]
      ,[AH_CAH_CashAdvanceRequestHeader]
      ,[AH_IsOSOutstandingAmountApplicable]
      ,CAST([AH_OSOutstandingAmount] as numeric) as AH_OSOutstandingAmount
    FROM [cargowise_dk_wrld].[AccTransactionHeader]
)
SELECT * FROM AccTransactionHeader;