#If you don't know where is your DB File path, select @@datadir 

SELECT * 
FROM CONNECTOR 
INTO OUTFILE 'connector.csv' 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY ';'; 
