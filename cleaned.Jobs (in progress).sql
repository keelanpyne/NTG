WITH AR AS (
    SELECT
        A.AL_PostDate as "AL_AR_PostDate",
        A.AL_PK,
        A.AL_RevRecognitionType as "AL_AR_RevRecognitionType",
        B.JR_ChargeType,
        B.JR_EstimatedCost,
        B.JR_PK,
        B.JR_LocalCostAmt,
        B.JR_LocalSellAmt
    FROM cargowise_dk_wrld.AccTransactionLines as A
    JOIN cargowise_dk_wrld.JobCharge as B
    ON A.AL_PK = B.JR_AL_ARLine
),
AP AS (
    SELECT
        D.AL_PostDate as "AL_AP_PostDate",
        D.AL_PK,
        D.AL_RevRecognitionType as "AL_AP_RevRecognitionType"
    FROM cargowise_dk_wrld.AccTransactionLines as D
    JOIN cargowise_dk_wrld.JobCharge as E
    ON D.AL_PK = E.JR_AL_APLine
)
SELECT
    AR.AL_AR_PostDate,
    AR.AL_PK,
    AR.AL_AR_RevRecognitionType,
    AR.JR_ChargeType,
    AR.JR_EstimatedCost,
    AR.JR_PK,
    AR.JR_LocalCostAmt,
    AR.JR_LocalSellAmt,
    AP.AL_AP_PostDate,
    AP.AL_PK,
    AP.AL_AP_RevRecognitionType
FROM AR
JOIN AP
ON AR."AL_PK" = AP."AL_PK";-- needs other queries --
