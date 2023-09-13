CREATE VIEW cleaned.GlbStaff AS
WITH GlbStaff AS (
    SELECT
	[GS_PK]
	,[GS_LoginName]
	,[GS_IsActive]
	,[GS_FullName] 
	,[GS_FriendlyName]
    FROM [cargowise_dk_wrld].[GlbStaff]
)
SELECT * FROM GlbStaff;
