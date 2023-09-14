CREATE OR ALTER VIEW cleaned.us_JobRevRecognitionDate AS
WITH us_JobRevRecognitionDate AS (
    SELECT
	    [JH]
	    ,[DateList]
    FROM [cargowise_us].[us_JobRevRecognitionDate]
)
SELECT * FROM us_JobRevRecognitionDate;
