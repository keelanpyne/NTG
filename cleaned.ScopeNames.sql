CREATE OR ALTER VIEW cleaned.ScopeNames AS 
WITH ScopeNames AS 
    (SELECT
       [defaultStringOID]
      ,[language]
      ,[value]
    FROM scope.scp_localized_string
    WHERE [language] IS NULL OR [language] = 'en' OR [language] = 'en_GB' AND
    defaultStringOID IN (
    SELECT DISTINCT defaultStringOID
    FROM scope.scp_localized_string))

    SELECT * FROM ScopeNames;
