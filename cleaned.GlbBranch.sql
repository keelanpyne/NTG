CREATE VIEW cleaned.GlbBranch AS
WITH GlbBranch AS (
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
    FROM [cargowise_dk_wrld].[GlbBranch]
)
SELECT * FROM GlbBranch;
