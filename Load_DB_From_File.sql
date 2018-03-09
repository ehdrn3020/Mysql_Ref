#INSERT DATA FROM FILE. C drive is not stable 
#MYSQL DEFAULT PATH IS DEPEND ON OS, VERSION OF SQL. MINE IS /DATA/MARIADB_HDD/MYSQL
#FULL DETAILS https://dev.mysql.com/doc/refman/5.7/en/load-data.html

ex1)
LOAD DATA LOCAL INFILE 'C:/Users/Administrator/Downloads/fns_u_invest_20180309.dat' INTO TABLE FNKSP200_DATA_copy
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';

ex2)
LOAD DATA (LOCAL) INFILE 'D:\data/fns_u_invest_20170530.DAT' INTO TABLE FMKSP200_DATA
FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n';
#(@col1,@col2,@col3,@col4) set name=@col4,id=@col2; 
