package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import Util.DBConnectionMySQL;

import Bean.sinhvien;

public class DBSinhvien {
	public DBSinhvien(){}
	
	public Boolean suathongtin(sinhvien sv) throws SQLException {			
		Connection conn = DBConnectionMySQL.getConnection();
		try {
			String call = "{call doancuoiky01.capnhatthongtinsinhvien(?, ?, ?, ?, ?)}";
			CallableStatement stmt = conn.prepareCall(call);
			stmt.setString(1,  sv.getID());
			stmt.setString(2,  sv.getName());
			stmt.setString(3,  sv.getDob());
			stmt.setString(4,  sv.getAddress());
			stmt.setString(5,  sv.getPhonenumber());
			return DBConnectionMySQL.MyExcuteUpdateNonQuery(conn, stmt);
		} catch (Exception e) {
			return false;
		}finally {
			conn.close();
		}
}
}