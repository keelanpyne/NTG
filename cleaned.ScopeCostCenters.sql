CREATE VIEW cleaned.ScopeCostCenters AS
WITH ScopeCostCenters AS (
    SELECT
        [OID]
      ,[code]
      ,[name]
      ,[legalEntityOID]
    FROM [scope].[mad_costcenter]
)
SELECT * FROM ScopeCostCenters;
