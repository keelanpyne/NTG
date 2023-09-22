CREATE OR ALTER VIEW ScopeJobCostingEstimate AS 
WITH ScopeJobCostingEstimate AS 
    (SELECT
    localCurrency,
    type,
    bookingDate,
    costCenterOID,
    economicDate,
    rootOrderOID,
    localAmountCur,
    chargeType_OID,
    income,
    SUM(localAmount) AS localAmount,
    CAST(1 AS BIT) AS estimate
    FROM scope.vou_estimate_jc_entry
    WHERE localAmount IS NOT NULL AND localAmount <> 0
    GROUP BY
        localCurrency,
        type,
        bookingDate,
        costCenterOID,
        economicDate,
        rootOrderOID,
        localAmountCur,
        chargeType_OID,
        income)

    SELECT * FROM ScopeJobCostingEstimate;
