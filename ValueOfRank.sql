#Make a array by value of Rank

SELECT ID, EDATE, N_INDEX,
(SELECT COUNT(*) + 1 FROM KSP200_DATA 
  WHERE N_INDEX > A.N_INDEX ) AS 'RANK'
FROM ksp200_data A