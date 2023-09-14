CREATE VIEW cleaned.ScopeCustomOrders AS
WITH ScopeCustomOrders AS (
    SELECT
       [OID]
      ,[changeTime]
      ,[changer]
      ,[creationTime]
      ,[creator]
      ,[orderDate]
      ,[remarks]
      ,[orderer_OID]
      ,[supplier_OID]
      ,[economicDate]
      ,[status]
      ,[type]
      ,[clerk]
      ,[toBeBilled]
      ,[country]
      ,[product_OID]
      ,[salesPerson_OID]
      ,[transportMode]
      ,[manualEconomicDate]
      ,[rootOrderOID]
      ,[rootOrderMimeType]
      ,[statusText]
      ,[vorCusDocNumber]
      ,[vorCusDocType]
      ,[vorCusDocPos]
      ,[cancelled]
      ,[cusDocNumber]
      ,[cusDocType]
      ,[cusDocPos]
      ,[dealDate]
      ,[customsServiceId]
      ,[parentOrderOID]
      ,[parentOrderMimeType]
      ,[cancellationReason_OID]
      ,[salesCommissionAmount]
      ,[salesCommissionCurrency]
      ,[supplierPartnerOID]
      ,[positionsCount]
      ,[determinedTaxability]
      ,[conveyanceType]
    FROM [scope].[cus_customs_order]
)
SELECT * FROM ScopeCustomOrders;