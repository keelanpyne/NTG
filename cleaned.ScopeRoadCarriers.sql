CREATE VIEW cleaned.ScopeRoadCarriers AS
WITH ScopeRoadCarriers AS (
    SELECT
        [OID]
        ,[cmrAddress]
        ,[deactivated]
        ,[ediCustomer_OID]
        ,[ediEnableDocuments]
        ,[ediEnableUpdates]
        ,[partner_OID]
        ,[scac]
        ,[volumeFactor]
    FROM [scope].[mad_carrier_road]
)
SELECT * FROM ScopeRoadCarriers;
