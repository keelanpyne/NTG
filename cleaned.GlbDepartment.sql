CREATE VIEW cleaned.GlbDepartment AS
WITH GlbDepartment AS (
    SELECT
        [GE_Code]
        ,[GE_Desc]
        ,[GE_IsActive]
        ,[GE_PK]
    FROM [cargowise_dk_wrld].[GlbDepartment]
)
SELECT * FROM GlbDepartment;
