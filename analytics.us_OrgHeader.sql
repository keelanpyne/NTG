CREATE VIEW [analytics].[us_OrgHeader] AS
WITH OrgHeader AS (
    SELECT
    [OH_IsValid]
      ,[OH_Code]
      ,[OH_IsActive]
      ,[OH_FullName]
      ,[OH_IsConsignee]
      ,[OH_IsConsignor]
      ,[OH_IsTransportClient]
      ,[OH_IsWarehouseClient]
      ,[OH_IsForwarder]
      ,[OH_IsShippingProvider]
      ,[OH_IsAirWholesaler]
      ,[OH_IsSeaWholesaler]
      ,[OH_IsRailProvider]
      ,[OH_IsLineHaulProvider]
      ,[OH_IsMiscFreightServices]
      ,[OH_IsAirCTO]
      ,[OH_IsAirLine]
      ,[OH_IsBroker]
      ,[OH_IsContainerYard]
      ,[OH_IsLocalTransport]
      ,[OH_IsPackDepot]
      ,[OH_IsSeaCTO]
      ,[OH_IsShippingLine]
      ,[OH_IsUnpackDepot]
      ,[OH_IsRailHead]
      ,[OH_IsRoadFreightDepot]
      ,[OH_IsShippingConsortium]
      ,[OH_IsFumigationContractor]
      ,[OH_IsGlobalAccount]
      ,[OH_IsNationalAccount]
      ,[OH_IsSalesLead]
      ,[OH_IsCompetitor]
      ,[OH_IsTempAccount]
      ,[OH_IsPersonalEffectsAccount]
      ,[OH_IsDistributionCentre]
      ,[OH_IsUserFlag1]
      ,[OH_IsUserFlag2]
      ,[OH_IsUserFlag3]
      ,[OH_IsUserFlag4]
      ,[OH_IsUserFlag5]
      ,[OH_IsUserFlag6]
      ,[OH_IsUserFlag7]
      ,[OH_IsUserFlag8]
      ,[OH_IsUserFlag9]
      ,[OH_IsUserFlag10]
      ,[OH_IsUserFlag11]
      ,[OH_IsUserFlag12]
      ,[OH_IsUserFlag13]
      ,[OH_IsUserFlag14]
      ,[OH_IsUserFlag15]
      ,[OH_IsUserFlag16]
      ,[OH_IsUserFlag17]
      ,[OH_IsUserFlag18]
      ,[OH_IsUserFlag19]
      ,[OH_IsUserFlag20]
      ,[OH_IsUserFlag21]
      ,[OH_IsUserFlag22]
      ,[OH_IsUserFlag23]
      ,[OH_IsUserFlag24]
      ,[OH_RL_NKClosestPort]
      ,[OH_Language]
      ,[OH_SystemLastEditTimeUtc]
      ,[OH_SystemLastEditUser]
      ,[OH_SystemCreateTimeUtc]
      ,[OH_SystemCreateUser]
      ,[OH_Category]
      ,[OH_IsControllingAgent]
      ,[OH_IsControllingCustomer]
      ,[OH_ScreeningStatus]
      ,[OH_AutoVersion]
      ,[OH_IsUserFlag25]
      ,[OH_IsUserFlag26]
      ,[OH_IsUserFlag27]
      ,[OH_IsUserFlag28]
      ,[OH_IsUserFlag29]
      ,[OH_IsUserFlag30]
      ,[OH_IsUserFlag31]
      ,[OH_IsUserFlag32]
      ,[OH_RSL_ShippingLine]
      ,[OH_IsFerryWaterTerminal]
      ,[OH_IsContainerLeasingCompany]
      ,[OH_OverrideAdditionalAddressInformation]
    FROM [cleaned].[us_OrgHeader]
)
SELECT * FROM OrgHeader;
GO