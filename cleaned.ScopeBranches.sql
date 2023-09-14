CREATE VIEW cleaned.ScopeBranches AS
WITH ScopeBranches AS (
    SELECT
        [OID]
        ,[code]
        ,[legalEntity_OID]
        ,[name]
        ,[partner_OID]
    FROM [scope].[mad_branch]
)
SELECT * FROM ScopeBranches;
