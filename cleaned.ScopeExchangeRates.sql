CREATE VIEW cleaned.ScopeExchangeRates AS
WITH ScopeExchangeRates AS (
    SELECT
        MAX([OID]) AS [OID], 
        [validFrom],
        [unit],
        [type],
        [targetCurrency],
        [rate] AS [rate_src],
        [directQuotation],
        [baseCurrency]
    FROM [scope].[mad_exc_rate]
    WHERE [type] = 'DAY_RATE'
    GROUP BY 
        [validFrom],
        [unit], 
        [type],
        [targetCurrency],
        [rate],
        [directQuotation], 
        [baseCurrency]
)
SELECT * FROM ScopeExchangeRates;
