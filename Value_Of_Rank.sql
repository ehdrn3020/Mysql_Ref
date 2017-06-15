#Make a array by value of Rank
#Or you can use Rank function given by windows

SELECT ID, EDATE, N_INDEX,
(SELECT COUNT(*) + 1 FROM KSP200_DATA 
  WHERE N_INDEX > A.N_INDEX ) AS 'RANK'
FROM ksp200_data A
