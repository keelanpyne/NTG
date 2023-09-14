CREATE OR ALTER VIEW cleaned.us_JobChargeRevRecognition AS
WITH us_JobChargeRevRecognition AS (
    SELECT
        [D3_PK]
        ,[D3_RecognitionType]
        ,[D3_RecognitionDate]
        ,[D3_JH]
        ,[D3_SystemCreateTimeUtc]
        ,[D3_SystemCreateUser]
        ,[D3_SystemLastEditTimeUtc]
        ,[D3_SystemLastEditUser]
    FROM [cargowise_us].[us_JobChargeRevRecognition]
)
SELECT * FROM us_JobChargeRevRecognition;
