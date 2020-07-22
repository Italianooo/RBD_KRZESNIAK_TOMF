BULK INSERT Ticket
FROM 'C:\Users\PC\Desktop\Zoo\Ticket_500k.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)

DELETE FROM Zoo