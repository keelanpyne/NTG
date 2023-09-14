CREATE OR ALTER VIEW cleaned.us_JobHeader AS
WITH us_JobHeader AS (
    SELECT
        [JE]
        ,[JH_A_JCL]
        ,[JH_A_JOP]
        ,[JH_GB]
        ,[JH_GE]
        ,[JH_GS_NKRepOps]
        ,[JH_GS_NKRepSales]
        ,[JH_JobNum]
        ,[JH_JobType]
        ,[JH_OA_AgentCollectAddr]
        ,[JH_OA_LocalChargesAddr]
        ,[JH_PK]
        ,[JH_Status]
    FROM [cargowise_us].[us_JobHeader]
)
SELECT * FROM us_JobHeader;
