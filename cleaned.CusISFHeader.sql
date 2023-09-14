CREATE VIEW [cleaned].[CusISFHeader] AS
WITH CusISFHeader AS (
    SELECT
        [BF_ActionReasonCode]
        ,[BF_AutoVersion]
        ,[BF_BondActivityCode]
        ,[BF_BondIndicator]
        ,[BF_BondNumberOrHolder]
        ,[BF_BondType]
        ,[BF_BuyerAddress1]
        ,[BF_BuyerAddress2]
        ,[BF_BuyerCity]
        ,[BF_BuyerContact]
        ,[BF_BuyerEmail]
        ,[BF_BuyerFax]
        ,[BF_BuyerMobile]
        ,[BF_BuyerName]
        ,[BF_BuyerPhone]
        ,[BF_BuyerPostcode]
        ,[BF_BuyerState]
        ,[BF_ConsigneeCode]
        ,[BF_ConsigneeCodeType]
        ,[BF_ConsigneeCountryOfIssue]
        ,[BF_ConsigneeDateOfBirth]
        ,[BF_ConsigneeFullName]
        ,[BF_CountryOfIssue]
        ,[BF_CustomsReference]
        ,[BF_CustomsStatus]
        ,[BF_DateOfBirth]
        ,[BF_EntryType]
        ,[BF_EstimatedQuantity]
        ,[BF_EstimatedQuantityUQ]
        ,[BF_EstimatedValue]
        ,[BF_EstimatedWeight]
        ,[BF_EstimatedWeightUQ]
        ,[BF_FirstAcceptedDate]
        ,[BF_GB]
        ,[BF_GB_Origin]
        ,[BF_ImporterCode]
        ,[BF_ImporterCodeType]
        ,[BF_IsCancelled]
        ,[BF_IsValid]
        ,[BF_JS_Shipment]
        ,[BF_JobReference]
        ,[BF_LastAcceptedDate]
        ,[BF_LineMergeStyle]
        ,[BF_NumOfHarmChars]
        ,[BF_OA_BuyerAddress]
        ,[BF_OA_SellerAddress]
        ,[BF_OH_Importer]
        ,[BF_OverrideFreightDefaults]
        ,[BF_OwnerReference]
        ,[BF_PK]
        ,[BF_RL_NKPlaceOfDelivery]
        ,[BF_RL_NKPortOfUnload]
        ,[BF_RN_NKBuyerCountryCode]
        ,[BF_RN_NKSellerCountryCode]
        ,[BF_SCAC]
        ,[BF_SellerAddress1]
        ,[BF_SellerAddress2]
        ,[BF_SellerCity]
        ,[BF_SellerContact]
        ,[BF_SellerEmail]
        ,[BF_SellerFax]
        ,[BF_SellerMobile]
        ,[BF_SellerName]
        ,[BF_SellerPhone]
        ,[BF_SellerPostcode]
        ,[BF_SellerState]
        ,[BF_SendEquipment]
        ,[BF_ShipmentSubType]
        ,[BF_ShipmentType]
        ,[BF_SystemCreateTimeUtc]
        ,[BF_SystemCreateUser]
        ,[BF_SystemLastEditTimeUtc]
        ,[BF_SystemLastEditUser]
        ,[BF_TransportMode]
    FROM [cargowise_dk_wrld].[CusISFHeader]
)
SELECT * FROM CusISFHeader;
