CREATE OR ALTER VIEW analytics.GlbStaff AS
WITH GlbStaff AS (
SELECT 
    GS_PK,
    GS_FullName,
    GS_IsActive,
    GS_LoginName,
    GS_FriendlyName
      FROM [cleaned].[GlbStaff])

SELECT * FROM GlbStaff;
