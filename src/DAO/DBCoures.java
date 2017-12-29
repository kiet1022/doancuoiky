package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import Bean.Coures;
import Util.DBConnectionMySQL;

public class DBCoures {
	
	public Boolean themkhoahoc(Coures cs) throws SQLException {			
		Connection conn = DBConnectionMySQL.getConnection();
		try {
			String call = "{call themkhoahoc(?,?,?,?,?)}";
			CallableStatement stmt = conn.prepareCall(call);
			stmt.setString(1,  cs.getID());
			stmt.setString(2,  cs.getName());
			stmt.setString(3, cs.getBegin_Time());
			stmt.setString(4, cs.getEnd_time());
			stmt.setFloat(5, cs.getTuition_fee());
			return DBConnectionMySQL.MyExcuteUpdateNonQuery(conn, stmt);
		} catch (Exception e) {
			return false;
		}finally {
			conn.close();
		}
		
	}
	
	public Boolean xoakhoahoc(Coures cs) throws SQLException {			
		Connection conn = DBConnectionMySQL.getConnection();
		try {
			String call = "{call xoakhoahoc(?)}";
			CallableStatement stmt = conn.prepareCall(call);
			stmt.setString(1,  cs.getID());
			return DBConnectionMySQL.MyExcuteUpdateNonQuery(conn, stmt);
		} catch (Exception e) {
			return false;
		}finally {
			conn.close();
		}
}
	
	public Boolean suakhoahoc(Coures cs) throws SQLException {			
		Connection conn = DBConnectionMySQL.getConnection();
		try {
			String call = "{call suakhoahoc(?,?,?,?,?)}";
			CallableStatement stmt = conn.prepareCall(call);
			stmt.setString(1,  cs.getID());
			stmt.setString(2,  cs.getName());
			stmt.setString(3, cs.getBegin_Time());
			stmt.setString(4, cs.getEnd_time());
			stmt.setFloat(5, cs.getTuition_fee());
			return DBConnectionMySQL.MyExcuteUpdateNonQuery(conn, stmt);
		} catch (Exception e) {
			return false;
		}finally {
			conn.close();
		}
		
	}
}
