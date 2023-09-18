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
    FROM cargowise_dk_wrld.JobChargeRevRecognition)

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








