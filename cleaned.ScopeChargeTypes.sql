CREATE VIEW cleaned.ScopeChargeTypes AS
WITH ScopeChargeTypes AS (
    SELECT
        [OID]
        ,[airFreightSurcharge]
        ,[breakdownRule]
        ,[calculationBasis]
        ,[changeTime]
        ,[changer]
        ,[code]
        ,[creationTime]
        ,[creator]
        ,[ediCode]
        ,[equalCost]
        ,[localizedName_oid]
        ,[mainTransportRelated]
        ,[organizationOID]
        ,[role]
        ,[transit]
        ,[type]
        ,[validInPayable]
        ,[validInReceivable]
        ,[validityEnd]
        ,[validityStart]
        ,[voucherText_oid]
    FROM [scope].[mad_charge_type]
)
SELECT * FROM ScopeChargeTypes;
