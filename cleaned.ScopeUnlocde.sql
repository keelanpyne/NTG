CREATE OR ALTER VIEW cleaned.ScopeUnlocode AS 
WITH Unlocodes AS (
    SELECT
       "OID",
        code,
        IATACode,
        country_OID,
        name_OID,
        latitude,
        longitude,
        airportName
    FROM scope.mad_unlocode)

    SELECT * FROM Unlocodes;
