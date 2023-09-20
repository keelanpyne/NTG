CREATE OR ALTER VIEW [analytics].[us_OrgAddress] AS
WITH OrgAddress AS (
    SELECT
        [OA_Address1]
        ,[OA_Address2]
        ,[OA_City]
        ,[OA_Code]
        ,[OA_CompanyNameOverride]
        ,[OA_OH]
        ,[OA_PK]
        ,[OA_PostCode]
        ,[OA_State]
    FROM [cleaned].[us_OrgAddress]
)
SELECT * FROM OrgAddress;
GO
