WITH Jobs_AR AS (
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
        B.JR_JH,
        C.D3_PK,
        C.D3_RecognitionType,
        C.D3_RecognitionDate AS "AR_RecognitionDate",
        C.D3_JH,
        C.D3_SystemCreateTimeUtc,
        C.D3_SystemCreateUser,
        C.D3_SystemLastEditTimeUtc,
        C.D3_SystemLastEditUser,
        D.JH_JobNum,
        D.JH_Status,
        D.JH_A_JOP,
        D.JH_A_JCL,
        D.JH_OA_LocalChargesAddr,
        D.JH_OA_AgentCollectAddr,
        D.JH_GS_NKRepSales,
        D.JH_GS_NKRepOps,
        D.JH_JobType,
        D.JS,
        D.JH_PK,
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
        F.JS_RL_NKPlaceOfDischarge
    FROM cleaned.AccTransactionLines as A
    LEFT JOIN cleaned.JobCharge as B ON UPPER(A.AL_PK) = UPPER(B.JR_AL_ARLine)
    LEFT JOIN cleaned.JobChargeRevRecognition as C on UPPER(C.D3_JH) = UPPER(B.JR_JH) AND UPPER(C.D3_RecognitionType) = UPPER(A.AL_RevRecognitionType)
    LEFT JOIN cargowise_dk_wrld.JobHeader as D ON UPPER(D.JH_PK) = UPPER(B.JR_JH)
    LEFT JOIN cleaned.JobShipment AS F ON UPPER(F.JS_PK) = UPPER(D.JS)),

    Jobs_AP AS (
    SELECT
        A.AL_PostDate as "AL_AP_PostDate",
        A.AL_PK,
        A.AL_RevRecognitionType as "AL_AP_RevRecognitionType",
        C.D3_RecognitionDate AS "AP_RecognitionDate"
    FROM cleaned.AccTransactionLines as A
    LEFT JOIN cleaned.JobCharge as B ON UPPER(A.AL_PK) = UPPER(B.JR_AL_APLine)
    LEFT JOIN cleaned.JobChargeRevRecognition as C on UPPER(C.D3_JH) = UPPER(B.JR_JH) AND UPPER(C.D3_RecognitionType) = UPPER(A.AL_RevRecognitionType))

    SELECT 
        A.AL_AR_PostDate,
        A.AL_PK,
        A.AL_AR_RevRecognitionType,
        B.AL_AP_PostDate,
        B.AL_AP_RevRecognitionType,
        A.JR_PK,
        A.JR_GE,
        A.JR_GB,
        A.JR_AC,
        A.JR_OH_CostAccount,
        A.JR_LocalCostAmt,
        A.JR_PaymentDate,
        A.JR_OH_SellAccount,
        A.JR_LocalSellAmt,
        A.JR_ChargeType,
        A.JR_EstimatedCost,
        A.JR_EstimatedRevenue,
        A.JR_JH,
        A.D3_PK,
        A.D3_RecognitionType,
        CASE
            WHEN AR_RecognitionDate = '1900-01-01 00:00:00' THEN NULL
            ELSE AR_RecognitionDate
        END AS AR_RecognitionDate,
        CASE
            WHEN AP_RecognitionDate = '1900-01-01 00:00:00' THEN NULL
            ELSE AP_RecognitionDate
        END AS AP_RecognitionDate,
        A.D3_JH,
        A.D3_SystemCreateTimeUtc,
        A.D3_SystemCreateUser,
        A.D3_SystemLastEditTimeUtc,
        A.D3_SystemLastEditUser,
        A.JH_JobNum,
        A.JH_Status,
        A.JH_A_JOP,
        A.JH_A_JCL,
        A.JH_OA_LocalChargesAddr,
        A.JH_OA_AgentCollectAddr,
        A.JH_GS_NKRepSales,
        A.JH_GS_NKRepOps,
        A.JH_JobType,
        A.JS,
        A.JH_PK,
        A.JS_ShipmentStatus,
        A.JS_RL_NKOrigin,
        A.JS_RL_NKDestination,
        A.JS_TransportMode,
        A.JS_ActualVolume,
        A.JS_UnitOfVolume,
        A.JS_ActualWeight,
        A.JS_UnitOfWeight,
        A.JS_ActualChargeable,
        A.JS_UnitFreightRate,
        A.JS_ShipmentType,
        A.JS_LoadingMeters,
        A.JS_RL_NKPlaceOfReceipt,
        A.JS_RL_NKPlaceOfDischarge
    FROM Jobs_AR AS A
    JOIN Jobs_AP AS B
    ON UPPER(A.AL_PK) = UPPER(B.AL_PK);
