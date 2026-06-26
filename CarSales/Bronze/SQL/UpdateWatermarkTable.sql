CREATE PROCEDURE UpdateWatermarkTable
    @lastload Varchar(200)
AS
BEGIN
    BEGIN TRANSACTION

    UPDATE water_table
    SET last_load=@lastload
    COMMIT TRANSACTION
    END;
