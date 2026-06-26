CREATE TABLE water_table
(
    last_load VARCHAR(2000) NULL
);

-- Initialize watermark value
INSERT INTO water_table (last_load)
VALUES ('DT00000');
