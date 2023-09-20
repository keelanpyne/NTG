CREATE VIEW [analytics].[us_GlbDepartment] AS
WITH GlbDepartment AS (
    SELECT
         [GE_Code]
        ,[GE_Desc]
        ,[GE_IsActive]
        ,[GE_PK]
    FROM [cleaned].[us_GlbDepartment]
)
SELECT * FROM GlbDepartment;
GO
