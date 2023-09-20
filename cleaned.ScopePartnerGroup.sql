CREATE OR ALTER VIEW [cleaned].[ScopePartnerGroup] AS
WITH ScopePartnerGroup AS (
    SELECT
       [OID]
      ,[code]
      ,[name]
      ,[deactivated]
    FROM [scope].[mad_partner]
)
SELECT * FROM ScopePartnerGroup;
GO
