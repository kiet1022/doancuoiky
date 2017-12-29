package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.Account;
import Util.DBConnectionMySQL;

public class DBAccount {
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
	
	public String GetType(Account sv) throws SQLException {
		Connection conn = DBConnectionMySQL.getConnection();
		String cmd = "select Type from account where ID = '"+sv.getID()+"';";
		ResultSet rs = DBConnectionMySQL.ExecuteQueryResultSet(conn, cmd);
		String Type="";
		try {

			while(rs.next()) {
				Type = rs.getString("Type");
			}
		} catch (Exception ex) {
			
		}
		conn.close();
		return Type;
	}
	
	public Boolean themtaikhoan(Account ac) throws SQLException {			
		Connection conn = DBConnectionMySQL.getConnection();
		try {
			String call = "{call themtaikhoan(?,?,?)}";
			CallableStatement stmt = conn.prepareCall(call);
			stmt.setString(1,  ac.getID());
			stmt.setString(2,  ac.getPass());
			stmt.setString(3,  ac.getType());
			return DBConnectionMySQL.MyExcuteUpdateNonQuery(conn, stmt);
		} catch (Exception e) {
			return false;
		}finally {
			conn.close();
		}
		
	}
	
	public Boolean xoataikhoan(Account ac) throws SQLException {			
		Connection conn = DBConnectionMySQL.getConnection();
		try {
			String call = "{call xoataikhoan(?)}";
			CallableStatement stmt = conn.prepareCall(call);
			stmt.setString(1,  ac.getID());
			return DBConnectionMySQL.MyExcuteUpdateNonQuery(conn, stmt);
		} catch (Exception e) {
			return false;
		}finally {
			conn.close();
		}
		
	}
}
