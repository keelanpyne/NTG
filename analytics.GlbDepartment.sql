CREATE VIEW analytics.GlbDepartment AS
WITH GlbDepartment AS (
    SELECT
        [GE_Code]
        ,[GE_Desc]
        ,[GE_IsActive]
        ,[GE_PK]
    FROM [cleaned].[GlbDepartment]
)
SELECT * FROM GlbDepartment;
