CREATE or alter VIEW cleaned.us_WhsDocket AS
WITH us_WhsDocket AS (
    SELECT
        [WD_AddPalletWeightToOrder]
        ,[WD_ArrivalDate]
        ,[WD_AutoFinaliseBOMIntoInventory]
        ,[WD_AutoVersion]
        ,[WD_BookedWithCBADateTimeUtc]
        ,[WD_BookingDate]
        ,[WD_CODPayMethod]
        ,[WD_ContainerMode]
        ,[WD_CubicSent]
        ,[WD_CustomAttrib1]
        ,[WD_CustomAttrib2]
        ,[WD_CustomAttrib3]
        ,[WD_CustomAttrib4]
        ,[WD_CustomAttrib5]
        ,[WD_CustomDate1]
        ,[WD_CustomDate2]
        ,[WD_CustomDecimal1]
        ,[WD_CustomDecimal2]
        ,[WD_CustomDecimal3]
        ,[WD_CustomDecimal4]
        ,[WD_CustomDecimal5]
        ,[WD_CustomFlag1]
        ,[WD_CustomFlag2]
        ,[WD_CustomFlag3]
        ,[WD_CustomFlag4]
        ,[WD_CustomFlag5]
        ,[WD_CustomerReference]
        ,[WD_CustomsParentReference]
        ,[WD_DocketID]
        ,[WD_DocketStatus]
        ,[WD_DocketSubType]
        ,[WD_DocketType]
        ,[WD_DropMode]
        ,[WD_ETA]
        ,[WD_ETD]
        ,[WD_ExWhsJobGuid]
        ,[WD_ExcludeFromTotePicking]
        ,[WD_ExternalReference]
        ,CAST([WD_ExternalReferenceSplit] AS numeric) AS WD_ExternalReferenceSplit
        ,[WD_F3_NKTotalPackType]
        ,[WD_FinalisedDate]
        ,[WD_GS_NKFinalizedBy]
        ,[WD_GoodsDescription]
        ,[WD_INCO]
        ,[WD_IsAuthorisedToLeave]
        ,[WD_IsCustomsWorkOrder]
        ,[WD_IsLoadingRequired]
        ,[WD_IsPutawayTransfer]
        ,CAST([WD_LocalCartInsuranceCost] AS numeric) AS WD_LocalCartInsuranceCost
        ,[WD_OH_Client]
        ,[WD_OH_Forwarder]
        ,[WD_OrderClassification]
        ,[WD_PK]
        ,[WD_PL_NKCarrierServiceLevel]
        ,[WD_PackagesSent]
        ,[WD_PackingAfterPickingRequired]
        ,[WD_PalletsSent]
        ,[WD_PickOption]
        ,CAST([WD_PickPriority] AS numeric) AS WD_PickPriority
        ,[WD_QualityAuditRequired]
        ,[WD_RS_NKServiceLevel]
        ,[WD_RX_NKTotalOrderCurrency]
        ,[WD_ReceiveCategory]
        ,[WD_RequiredDate]
        ,[WD_ScreeningStatus]
        ,CAST([WD_ShipperCODAmount] AS numeric) AS WD_ShipperCODAmount
        ,[WD_StartedReceiving]
        ,[WD_SystemCreateTimeUtc]
        ,[WD_SystemCreateUser]
        ,[WD_SystemLastEditTimeUtc]
        ,[WD_SystemLastEditUser]
        ,[WD_TZ_TransportZone]
        ,[WD_TotalCubic]
        ,[WD_TotalCubicUnit]
        ,CAST([WD_TotalOrderValue] AS numeric) AS WD_TotalOrderValue
        ,[WD_TotalPallets]
        ,[WD_TotalUnits]
        ,[WD_TotalWeight]
        ,[WD_TotalWeightUnit]
        ,[WD_TransportMode]
        ,[WD_TransportReference]
        ,[WD_UnitsSent]
        ,[WD_WD_ParentDocket]
        ,[WD_WD_Split]
        ,[WD_WLO_PlannedLoad]
        ,[WD_WL_CrossDock]
        ,[WD_WP]
        ,[WD_WP_ParentPickForTransfer]
        ,[WD_WP_PickBeingReplenished]
        ,[WD_WSH_SalesChannel]
        ,[WD_WW_Whs]
        ,[WD_WeightSent]
        ,[WD_WeightSentUserEntered]
        ,[WD_WeightVolSetFromImport]
        ,[WD_WhsOrderFulfillmentRule]
    FROM [cargowise_us].[us_WhsDocket]
)
SELECT * FROM us_WhsDocket;