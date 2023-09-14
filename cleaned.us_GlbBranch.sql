CREATE OR ALTER VIEW cleaned.us_GlbBranch AS
WITH us_GlbBranch AS (
    SELECT
         [GB_PK]
        ,[GB_Code]
        ,[GB_BranchName]
        ,[GB_State]
        ,[GB_City]
        ,[GB_GC]
        ,[GB_IsActive]
        ,[GC_Code]
        ,[GC_Name]
        ,[GC_IsActive]
    FROM [cargowise_us].[us_GlbBranch]
)
SELECT * FROM us_GlbBranch;
