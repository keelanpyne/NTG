CREATE VIEW cleaned.JobCharge AS
WITH JobCharge AS (
    SELECT
        CAST([JR_OSCostAmt] AS float) AS JR_OSCostAmt,
        CAST([JR_AgentDeclaredCostAmt] AS float) AS JR_AgentDeclaredCostAmt,
        CAST([JR_LocalCostAmt] AS float) AS JR_LocalCostAmt,
        CAST([JR_OSCostGSTAmt] AS float) AS JR_OSCostGSTAmt,
        CAST([JR_OSCostWHTAmt] AS float) AS JR_OSCostWHTAmt,
        CAST([JR_EstimatedCost] AS float) AS JR_EstimatedCost,
        CAST([JR_DeclaredOSCostAmt] AS float) AS JR_DeclaredOSCostAmt,
        CAST([JR_OSSellAmt] AS float) AS JR_OSSellAmt,
        CAST([JR_AgentDeclaredSellAmt] AS float) AS JR_AgentDeclaredSellAmt,
        CAST([JR_LocalSellAmt] AS float) AS JR_LocalSellAmt,
        CAST([JR_OSSellWHTAmt] AS float) AS JR_OSSellWHTAmt,
        CAST([JR_EstimatedRevenue] AS float) AS JR_EstimatedRevenue,
        CAST([JR_APNumberOfSupportingDocuments] AS int) AS JR_APNumberOfSupportingDocuments,
        CAST([JR_ARNumberOfSupportingDocuments] AS int) AS JR_ARNumberOfSupportingDocuments,
        CAST([JR_CostTaxDate] AS datetime) AS JR_CostTaxDate,
        CAST([JR_SellTaxDate] AS datetime) AS JR_SellTaxDate
    FROM [cargowise_dk_wrld].[JobCharge]
)
SELECT * FROM JobCharge;
