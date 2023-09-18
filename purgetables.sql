DECLARE @TableName NVARCHAR(MAX)
DECLARE @DeleteStatement NVARCHAR(MAX)

DECLARE table_cursor CURSOR FOR
SELECT name
FROM sys.tables

OPEN table_cursor
FETCH NEXT FROM table_cursor INTO @TableName

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @DeleteStatement = 'DELETE FROM ' + @TableName
    EXEC sp_executesql @DeleteStatement
    
    FETCH NEXT FROM table_cursor INTO @TableName
END

CLOSE table_cursor
DEALLOCATE table_cursor
