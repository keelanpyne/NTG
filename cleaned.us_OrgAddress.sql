CREATE VIEW cleaned.us_OrgAddress AS
WITH us_OrgAddress AS (
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
    FROM [cargowise_us].[us_OrgAddress]
)
SELECT * FROM us_OrgAddress;
