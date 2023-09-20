CREATE OR ALTER VIEW [cleaned].[ScopeCompanies] AS
WITH ScopeCompanies AS (
    SELECT
        [OID]
      ,[changeTime]
      ,[changer]
      ,[creationTime]
      ,[creator]
      ,[code]
      ,[name]
      ,[timeZone]
      ,[lastOpenMonth]
      ,[organization_OID]
      ,[currency]
      ,[supportTeam]
      ,[enableDocumentArchiveExport]
      ,[jiraCustomer]
      ,[exportUploadedVoucherDocs]
      ,[exportUploadedShipmentDocs]
      ,[addressInterfaceEnabled]
      ,[crmId]
    FROM [scope].[mad_legal_entity]
)
SELECT * FROM ScopeCompanies;
