CREATE OR ALTER VIEW [cleaned].[ScopePartnerGroupPartners] AS
WITH ScopePartnerGroupPartners AS (
    SELECT
       [PARTNER_GROUP_OID]
       ,[PARTNER_OID]
    FROM [scope].[mad_partner_group_partners]
)
SELECT * FROM ScopePartnerGroupPartners;
