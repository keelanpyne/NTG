CREATE VIEW [analytics].[us_GlbStaff] AS
WITH GlbStaff AS (
SELECT 
    GS_PK,
    GS_FullName,
    GS_IsActive,
    GS_LoginName,
    GS_FriendlyName
FROM [cleaned].[us_GlbStaff])

SELECT * FROM GlbStaff;
GO
