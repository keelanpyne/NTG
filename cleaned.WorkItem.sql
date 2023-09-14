CREATE VIEW cleaned.WorkItem AS
WITH WorkItem AS (
    SELECT
      [WKI_WorkItemNumber]
      ,[WKI_GC_AssignedCompany]
      ,[WKI_GE_AssignedDepartment]
      ,[WKI_PortOrCountry]
      ,[WKI_WorkItemType]
      ,[WKI_WorkItemArea]
      ,[WKI_ActivityType]
      ,[WKI_ActivitySubtype]
      ,[WKI_Priority]
      ,[WKI_Summary]
      ,[WKI_Status]
      ,[WKI_SystemCreateTimeUtc]
      ,[WKI_SystemCreateUser]
      ,[WKI_SystemLastEditTimeUtc]
      ,[WKI_SystemLastEditUser]
      ,[WKI_DateOfChange]
      ,[WKI_GB_AssignedBranch]
      ,[WKI_Risk]
      ,[WKI_P9_DefectCausedByTask]
      ,[WKI_P9_DefectFirstMissedInTask]
      ,[WKI_AutoVersion]
    FROM [cargowise_dk_wrld].[WorkItem]
)
SELECT * FROM WorkItem;
