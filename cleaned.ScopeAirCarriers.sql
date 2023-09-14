CREATE VIEW cleaned.ScopeAirCarriers AS
WITH ScopeAirCarriers AS (
    SELECT
        [OID]
        ,[awbCarrierAddress]
        ,[awbPrefix]
        ,[deactivated]
        ,[iataCode]
        ,[icaoCode]
        ,[name]
        ,[pp_business]
        ,[pp_labels]
        ,[pp_language]
        ,[pp_name]
    FROM [scope].[mad_air_carrier]
)
SELECT * FROM ScopeAirCarriers;
