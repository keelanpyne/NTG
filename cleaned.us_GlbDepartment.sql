CREATE OR ALTER VIEW cleaned.us_GlbDepartment AS
WITH us_GlbDepartment AS (
    SELECT
        [GE_Code]
        ,[GE_Desc]
        ,[GE_IsActive]
        ,[GE_PK]
    FROM [cargowise_us].[us_GlbDepartment]
)
SELECT * FROM us_GlbDepartment;
