CREATE OR ALTER VIEW analytics.us_GlbBranch AS
WITH GlbBranch AS (
    SELECT
        A.GB_PK,
        A.GB_Code,
        A.GB_BranchName,
        A.GB_State,
        A.GB_City,
        A.GB_GC,
        A.GB_IsActive,
        B.GC_Code,
        B.GC_Name,
        B.GC_IsActive
    FROM cleaned.us_GlbBranch as A
    JOIN cleaned.GlbCompany as B
    ON A.GB_GC = B.GC_PK)

    SELECT * FROM GlbBranch;
