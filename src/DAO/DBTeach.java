package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import Bean.teach;
import Util.DBConnectionMySQL;

public class DBTeach {
	public Boolean capnhatdiem(teach te) throws SQLException {			
		Connection conn = DBConnectionMySQL.getConnection();
		try {
			String call = "{call updatediemsv(?,?,?,?)}";
			CallableStatement stmt = conn.prepareCall(call);
			stmt.setString(1,  te.getCoures_ID());
			stmt.setString(2,  te.getStudent_ID());
			stmt.setFloat(3,  te.getGiuaKy());
			stmt.setFloat(4,  te.getCuoiKy());
			return DBConnectionMySQL.MyExcuteUpdateNonQuery(conn, stmt);
		} catch (Exception e) {
			return false;
		}finally {
			conn.close();
		}
}
}
