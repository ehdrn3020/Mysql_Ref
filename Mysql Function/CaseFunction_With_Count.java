﻿connect : SQL connector
columnLabel : Column name from DB want to get
edate : date 

public static List<String> getEFTemSqlResultSet(Connection connect, String columnLabel, String edate)
	throws Exception {
	List<String> temSqlResult = new ArrayList<String>();
	int sum = 0;
	preparedStatement = connect.prepareStatement(
		"SELECT CONCAT(COUNT(CASE WHEN EFR > 0.9 THEN 1 END),'개') AS '$amount_up_count', "
		+ "CONCAT(COUNT(CASE WHEN EFR < -0.9 THEN 1 END),'개') AS '$amount_dn_count',"
		+ "CONCAT(COUNT(CASE WHEN EFR <= 0.9 AND EFR >= -0.9 THEN 1 END),'개') AS '$amount_count'"
		+ "FROM KSP200S_DATA"
		+ "WHERE EDATE = '"+edate+"';");
	resultSet = preparedStatement.executeQuery();

	while (resultSet.next()) {
		temSqlResult.add(resultSet.getString(columnLabel));
	}
	return temSqlResult;
}