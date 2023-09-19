----- AR Rev Recognition ------

WITH AR AS (
    SELECT
        D.AL_PostDate as "AL_AR_PostDate",
        D.AL_PK,
        D.AL_RevRecognitionType as "AL_AR_RevRecognitionType",
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
    FROM cargowise_dk_wrld.AccTransactionLines as D
    JOIN cargowise_dk_wrld.JobCharge as E
    ON D.AL_PK = E.JR_AL_ARLine
),

AR_JR AS (
    SELECT
        D3_JH, 
        D3_RecognitionType,
        D3_RecognitionDate AS "AR_RecognitionDate"
    FROM cargowise_dk_wrld.JobChargeRevRecognition),

AR_JH AS(
    SELECT
        F.JH_JobNum,
        F.JH_Status,
        F.JH_A_JOP,
        F.JH_A_JCL,
        F.JH_OA_LocalChargesAddr,
        F.JH_OA_AgentCollectAddr,
        F.JH_GS_NKRepSales,
        F.JH_GS_NKRepOps,
        F.JH_JobType,
        F.JE,
       --F.JK,
       --F.WD,
        F.WKI,
        F.JS,
        F.TH
        --F.BF
    FROM cargowise_dk_wrld.JobHeader AS F
    JOIN cargowise_dk_wrld.JobCharge AS G
    ON F.JH_PK = G.JR_JH
),

AR_JS AS(
    SELECT
        H.JS_ShipmentStatus,
        H.JS_RL_NKOrigin,
        H.JS_RL_NKDestination,
        H.JS_TransportMode,
        H.JS_ActualVolume,
        H.JS_UnitOfVolume,
        H.JS_ActualWeight,
        H.JS_UnitOfWeight,
        H.JS_ActualChargeable,
        H.JS_UnitFreightRate,
        H.JS_ShipmentType,
        H.JS_LoadingMeters,
        H.JS_RL_NKPlaceOfReceipt,
        H.JS_RL_NKPlaceOfDischarge
    FROM cargowise_dk_wrld.JobShipment AS H
)

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





