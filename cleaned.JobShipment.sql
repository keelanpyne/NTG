CREATE VIEW cleaned.JobShipment AS
WITH JobShipment AS (
    SELECT
            [JS_AWBServiceLevel]
            ,[JS_A_BKD]
            ,[JS_A_RCV]
            ,[JS_ActualChargeable]
            ,[JS_ActualVolume]
            ,[JS_ActualWeight]
            ,[JS_AdditionalTerms]
            ,[JS_AttachedOrderXMLUpdateCutOffDateUtc]
            ,[JS_AutoVersion]
            ,[JS_BookingReference]
            ,[JS_CFSReference]
            ,[JS_CO2ePerTonneInKg]
            ,[JS_CO2eStatus]
            ,[JS_CartageWaybill]
            ,[JS_ClientRequestedETA]
            ,[JS_CommunityTransitStatus]
            ,[JS_ConsolReference]
            ,[JS_DeliveryDueDate]
            ,[JS_DocumentedChargeable]
            ,[JS_DocumentedLoadingMeters]
            ,[JS_DocumentedVolume]
            ,[JS_DocumentedWeight]
            ,[JS_EFreightStatus]
            ,[JS_E_ARV]
            ,[JS_E_DEP]
            ,[JS_ExportReceivingDepotDispatchRequested]
            ,[JS_ExportReceivingDepotReceiptRequested]
            ,[JS_F3_NKPackType]
            ,[JS_F3_NKTotalCountPackType]
            ,[JS_FreightCostRate]
            ,[JS_FreightCostRateAutoratingMode]
            ,[JS_FreightGatewaySellRateAutoratingMode]
            ,[JS_FreightSpotRateAutoratingMode]
            ,[JS_GatewayFreightSellRate]
            ,[JS_GoodsDescription]
            ,[JS_GoodsValue]
            ,[JS_HBLAWBChargesDisplay]
            ,[JS_HBLContainerPackModeOverride]
            ,[JS_HouseBill]
            ,[JS_HouseBillIssueDate]
            ,[JS_HouseBillOfLadingType]
            ,[JS_HouseBill_Reversed]
            ,[JS_INCO]
            ,[JS_ImportReleaseDepotDispatchRequested]
            ,[JS_ImportReleaseDepotReceiptRequested]
            ,[JS_InsuranceValue]
            ,[JS_InterimReceipt]
            ,[JS_InvisibleTabsXML]
            ,[JS_IsBooking]
            ,[JS_IsCFSRegistered]
            ,[JS_IsCancelled]
            ,[JS_IsDirectBooking]
            ,[JS_IsForwardRegistered]
            ,[JS_IsHighRisk]
            ,[JS_IsNeutralMaster]
            ,[JS_IsShipping]
            ,[JS_IsSplitShipment]
            ,[JS_IsValid]
            ,[JS_JS_ColoadMasterShipment]
            ,[JS_JS_SplitSwitchShipment]
            ,[JS_JX]
            ,[JS_Legacy_Support_Columns_Start]
            ,[JS_LoadingMeters]
            ,[JS_ManifestedChargeable]
            ,[JS_ManifestedLoadingMeters]
            ,[JS_ManifestedVolume]
            ,[JS_ManifestedWeight]
            ,[JS_NoCopyBills]
            ,[JS_NoOriginalBills]
            ,[JS_OA_BookedShippingLineAddress]
            ,[JS_OA_ExportReceivingDepot]
            ,[JS_OA_ImportReleaseDepot]
            ,[JS_OH_DeliveryAgent]
            ,[JS_OH_ExportBroker]
            ,[JS_OH_HandledOnBehalfOfForwarder]
            ,[JS_OH_ImportBroker]
            ,[JS_OH_TranshipAgent]
            ,[JS_OuterPacks]
            ,[JS_OverrideWaybillDefaults]
            ,[JS_PK]
            ,[JS_PL_NKCarrierServiceLevel]
            ,[JS_PackingMode]
            ,[JS_PackingOrder]
            ,[JS_PaymentTermAutoratingOverride]
            ,[JS_Phase]
            ,[JS_RL_NKDestination]
            ,[JS_RL_NKDischargePort]
            ,[JS_RL_NKFreightRateDestination]
            ,[JS_RL_NKFreightRateOrigin]
            ,[JS_RL_NKHouseBillIssuePlace]
            ,[JS_RL_NKLoadPort]
            ,[JS_RL_NKOrigin]
            ,[JS_RL_NKPlaceOfDischarge]
            ,[JS_RL_NKPlaceOfReceipt]
            ,[JS_RS_NKServiceLevel]
            ,[JS_RX_NKFreightCostRateCurrency]
            ,[JS_RX_NKFrtRateCurrency]
            ,[JS_RX_NKGatewayFreightSellRateCurrency]
            ,[JS_RX_NKGoodsValueCurr]
            ,[JS_RX_NKInsuranceCurrency]
            ,[JS_ReleaseType]
            ,[JS_ScreeningStatus]
            ,[JS_ShipmentStatus]
            ,[JS_ShipmentType]
            ,[JS_ShippedOnBoard]
            ,[JS_ShippedOnBoardDate]
            ,[JS_ShipperCODAmount]
            ,[JS_ShipperCODPayMethod]
            ,[JS_SystemCreateTimeUtc]
            ,[JS_SystemCreateUser]
            ,[JS_SystemLastEditTimeUtc]
            ,[JS_SystemLastEditUser]
            ,[JS_TH_OneTimeQuote]
            ,[JS_TotalPackageCount]
            ,[JS_TranshipToOtherCFS]
            ,[JS_TransportMode]
            ,[JS_UniqueConsignRef]
            ,[JS_UniqueConsignRef_Reversed]
            ,[JS_UnitFreightRate]
            ,[JS_UnitOfVolume]
            ,[JS_UnitOfWeight]
            ,[JS_VisibleTabs]
            ,[JS_WL]
            ,[JS_WarehouseLocation]
    FROM [cargowise_dk_wrld].[JobShipment]
)
SELECT * FROM JobShipment;

	
