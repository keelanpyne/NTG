----- AP Rev Recognition ------

WITH AP AS (
    SELECT
        D.AL_PostDate as "AL_AP_PostDate",
        D.AL_PK,
        D.AL_RevRecognitionType as "AL_AP_RevRecognitionType",
        E.JR_JH
    FROM cargowise_dk_wrld.AccTransactionLines as D
    JOIN cargowise_dk_wrld.JobCharge as E
    ON D.AL_PK = E.JR_AL_APLine
),

-- SELECT * FROM AP;

AP_JR AS (
    SELECT
        D3_JH, 
        D3_RecognitionType
    FROM cargowise_dk_wrld.JobChargeRevRecognition)

-- SELECT * FROM AP_JR;
    
SELECT 
    * 
FROM AP_JR
LEFT OUTER JOIN AP
ON AP.JR_JH = AP_JR.D3_JH AND AP.AL_AP_RevRecognitionType = AP_JR.D3_RecognitionType;

----- AR Rev Recognition ------

WITH AR AS (
    SELECT
        D.AL_PostDate as "AL_AR_PostDate",
        D.AL_PK,
        D.AL_RevRecognitionType as "AL_AR_RevRecognitionType",
        E.JR_JH
    FROM cargowise_dk_wrld.AccTransactionLines as D
    JOIN cargowise_dk_wrld.JobCharge as E
    ON D.AL_PK = E.JR_AL_ARLine
),

-- SELECT * FROM AP;

AR_JR AS (
    SELECT
        D3_JH, 
        D3_RecognitionType
    FROM cargowise_dk_wrld.JobChargeRevRecognition)

-- SELECT * FROM AP_JR;
    
SELECT 
   top 10 * 
FROM AR_JR
LEFT OUTER JOIN AR
ON AR.JR_JH = AR_JR.D3_JH AND AR.AL_AR_RevRecognitionType = AR_JR.D3_RecognitionType;
