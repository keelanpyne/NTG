CREATE VIEW cleaned.JobChargeRevRecognition AS
WITH JobChargeRevRecognition AS (
    SELECT
        [D3_PK]
        ,[D3_RecognitionType]
        ,[D3_RecognitionDate]
        ,[D3_JH]
        ,[D3_SystemCreateTimeUtc]
        ,[D3_SystemCreateUser]
        ,[D3_SystemLastEditTimeUtc]
        ,[D3_SystemLastEditUser]
    FROM [cargowise_dk_wrld].[JobChargeRevRecognition]
)
SELECT * FROM JobChargeRevRecognition;
