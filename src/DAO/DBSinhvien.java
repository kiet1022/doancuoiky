package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import Util.DBConnectionMySQL;
import Bean.Account;
import Bean.sinhvien;

public class DBSinhvien {
	public DBSinhvien(){}
	
			public String GetPass(Account sv) throws SQLException {
				Connection conn = DBConnectionMySQL.getConnection();
				String cmd = "select Pass from account where ID = '"+sv.getID()+"';";
				ResultSet rs = DBConnectionMySQL.ExecuteQueryResultSet(conn, cmd);
				String Pass="";
				try {

					while(rs.next()) {
						Pass = rs.getString("Pass");
					}
				} catch (Exception ex) {
					
				}
				conn.close();
				return Pass;
			}
}
