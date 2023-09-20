WITH A AS (
SELECT 
    A.[OID]
   ,A.[code]
   ,A.[name]
   ,A.[deactivated]
   ,B.[PARTNER_OID]
FROM cleaned.ScopePartnerGroup AS A
JOIN cleaned.ScopePartnerGroupPartners AS B
ON A.OID = B.PARTNER_OID
WHERE A.deactivated = 'False'
AND B.PARTNER_GROUP_OID IS NOT NULL),

SELECT * FROM A;
