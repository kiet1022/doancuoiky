package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import Bean.lophoc;
import Util.DBConnectionMySQL;

public class DBLophoc {
	public Boolean themkhoahoc(lophoc lh) throws SQLException {			
		Connection conn = DBConnectionMySQL.getConnection();
		try {
			String call = "{call dangkykhoahoc(?, ?, ?, ?, ?, ?, ?)}";
			CallableStatement stmt = conn.prepareCall(call);
			stmt.setString(1,  lh.getID());
			stmt.setString(2,  lh.getBegin_time());
			stmt.setString(3, lh.getTeacher_ID());
			stmt.setString(4, lh.getCoures_ID());
			stmt.setString(5, lh.getRoom_ID());
			stmt.setString(6, lh.getTuition_time());
			stmt.setString(7, lh.getStudent_ID());
			return DBConnectionMySQL.MyExcuteUpdateNonQuery(conn, stmt);
		} catch (Exception e) {
			return false;
		}finally {
			conn.close();
		}
}
}
