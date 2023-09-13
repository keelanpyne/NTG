CREATE VIEW cleaned.JobRevRecognitionDate AS
WITH JobRevRecognitionDate AS (
    SELECT
	    [JH]
	    ,[DateList]
    FROM [cargowise_dk_wrld].[JobRevRecognitionDate]
)
SELECT * FROM JobRevRecognitionDate;
