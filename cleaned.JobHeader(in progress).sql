----- AR Rev Recognition ------

WITH AR AS (
    SELECT
        A.AL_PostDate as "AL_AR_PostDate",
        A.AL_PK,
        A.AL_RevRecognitionType as "AL_AR_RevRecognitionType",
        B.JR_PK,
        B.JR_GE,
        B.JR_GB,
        B.JR_AC,
        B.JR_OH_CostAccount,
        B.JR_LocalCostAmt,
        B.JR_PaymentDate,
        B.JR_OH_SellAccount,
        B.JR_LocalSellAmt,
        B.JR_ChargeType,
        B.JR_EstimatedCost,
        B.JR_EstimatedRevenue,
        B.JR_JH
    FROM cargowise_dk_wrld.AccTransactionLines as A
    LEFT OUTER JOIN cargowise_dk_wrld.JobCharge as B
    ON A.AL_PK = B.JR_AL_ARLine
),

AR_JH AS(
    SELECT
        D.JH_JobNum,
        D.JH_Status,
        D.JH_A_JOP,
        D.JH_A_JCL,
        D.JH_OA_LocalChargesAddr,
        D.JH_OA_AgentCollectAddr,
        D.JH_GS_NKRepSales,
        D.JH_GS_NKRepOps,
        D.JH_JobType,
        D.JE,
       --E.JK,
       --E.WD,
        D.WKI,
        D.JS,
        D.TH,
        --E.BF
        D.JH_PK,
        E.JR_PK,
        E.JR_GE,
        E.JR_GB,
        E.JR_AC,
        E.JR_OH_CostAccount,
        E.JR_LocalCostAmt,
        E.JR_PaymentDate,
        E.JR_OH_SellAccount,
        E.JR_LocalSellAmt,
        E.JR_ChargeType,
        E.JR_EstimatedCost,
        E.JR_EstimatedRevenue,
        E.JR_JH
    FROM cargowise_dk_wrld.JobHeader AS D
    LEFT OUTER JOIN AR AS E
    ON D.JH_PK = E.JR_JH
),

AR_JS AS(
    SELECT
        F.JS_ShipmentStatus,
        F.JS_RL_NKOrigin,
        F.JS_RL_NKDestination,
        F.JS_TransportMode,
        F.JS_ActualVolume,
        F.JS_UnitOfVolume,
        F.JS_ActualWeight,
        F.JS_UnitOfWeight,
        F.JS_ActualChargeable,
        F.JS_UnitFreightRate,
        F.JS_ShipmentType,
        F.JS_LoadingMeters,
        F.JS_RL_NKPlaceOfReceipt,
        F.JS_RL_NKPlaceOfDischarge,
        G.JH_JobNum,
        G.JH_Status,
        G.JH_A_JOP,
        G.JH_A_JCL,
        G.JH_OA_LocalChargesAddr,
        G.JH_OA_AgentCollectAddr,
        G.JH_GS_NKRepSales,
        G.JH_GS_NKRepOps,
        G.JH_JobType,
        G.JE,
       --G.JK,
       --G.WD,
        G.WKI,
        G.JS,
        G.TH,
        --G.BF
        G.JH_PK,
        G.JR_PK,
        G.JR_GE,
        G.JR_GB,
        G.JR_AC,
        G.JR_OH_CostAccount,
        G.JR_LocalCostAmt,
        G.JR_PaymentDate,
        G.JR_OH_SellAccount,
        G.JR_LocalSellAmt,
        G.JR_ChargeType,
        G.JR_EstimatedCost,
        G.JR_EstimatedRevenue,
        G.JR_JH
    FROM cargowise_dk_wrld.JobShipment AS F
    LEFT OUTER JOIN AR_JH AS G
    ON G.JS = F.JS_PK
)

SELECT * FROM AR_JS;


SELECT 
       *,
       CASE 
            WHEN AR_RecognitionDate = '1900-01-01 00:00:00' THEN NULL
            ELSE AR_RecognitionDate
        END AS AR_RecognitionDate,
        CASE
            WHEN AL_AR_RevRecognitionType = 'IMM' THEN
               CASE
                   WHEN AL_AR_PostDate IS NULL THEN AL_AR_PostDate
                   ELSE AL_AR_PostDate
               END
           ELSE AR_RecognitionDate
       END AS RevenueRecognitionDate,
       CASE
           WHEN AL_AR_RevRecognitionType = 'IMM' THEN
               CASE
                   WHEN AL_AR_PostDate IS NULL THEN AL_AR_PostDate
                   ELSE AL_AR_PostDate
               END
           ELSE AR_RecognitionDate
       END AS CostRecognitionDate
FROM AR_JR
LEFT OUTER JOIN AR
ON AR.JR_JH = AR_JR.D3_JH AND AR.AL_AR_RevRecognitionType = AR_JR.D3_RecognitionType;

SELECT TOP 1 * FROM cargowise_dk_wrld.JobHeader;
