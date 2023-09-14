CREATE VIEW cleaned.ScopeCountries AS
WITH ScopeCountries AS (
    SELECT
         [OID]
        ,[alpha3]
        ,[code]
        ,[name_OID]
    FROM [scope].[mad_country]
)
SELECT * FROM ScopeCountries;
