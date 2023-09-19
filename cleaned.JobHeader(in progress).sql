CREATE VIEW cleaned.JobHeader AS
WITH JobHeader AS (
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
    FROM [cargowise_dk_wrld].[JobHeader]
)
SELECT * FROM JobHeader;
