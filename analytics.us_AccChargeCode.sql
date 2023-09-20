SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [analytics].[us_AccChargeCode] AS
WITH AccChargeCode AS (        
    SELECT
       [AC_PK]
      ,[AC_Code]
      ,[AC_IsActive]
      ,[AC_Desc]
      ,[AC_ChargeType]
      ,[AC_GoodsServiceType]
      ,[AC_MarginPercentage]
      ,[AC_InputGSTVATRecoverable]
      ,[AC_AW_WithholdingTaxRate]
      ,[AC_AT_GSTRate]
      ,[AC_AG_RevenueAccount]
      ,[AC_AG_WIPAccount]
      ,[AC_AG_CostAccount]
      ,[AC_AG_AccrualAccount]
      ,[AC_PrintSequence]
      ,[AC_AR_SalesGroup]
      ,[AC_AR_ExpenseGroup]
      ,[AC_ChargeGroup]
      ,[AC_ChargeSubGroup]
      ,[AC_ChargeOtherGroups]
      ,[AC_IsGroupageCharge]
      ,[AC_RateCalculator]
      ,[AC_ShowOnQuotation]
      ,[AC_SuppressOnQuoteIfZero]
      ,[AC_DepartmentFilterList]
      ,[AC_AllowDescriptionOvertype]
      ,[AC_IsCommissionable]
      ,[AC_IATA_ChargeCodeMap]
      ,[AC_AX_TaxOverrideGroup]
      ,[AC_GC]
      ,[AC_EnergySourceGroup]
      ,[AC_AC_RevenueChargeCode]
      ,[AC_IsAdhocServiceCharge]
      ,[AC_AG_CostClearingAccount]
      ,[AC_AG_DisbursementShortfallAccount]
      ,[AC_AG_DisbursementSurplusAccount]
      ,[AC_AG_RevenueClearingAccount]
      ,[AC_AutoVersion]
      ,[AC_SystemCreateTimeUtc]
      ,[AC_SystemCreateUser]
      ,[AC_SystemLastEditTimeUtc]
  FROM cleaned.us_AccChargeCode)

SELECT * FROM AccChargeCode;
GO
