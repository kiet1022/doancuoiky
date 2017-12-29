package Util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnectionMySQL {
	 // Driver and URL
    private static final String DRIVER_JDBC = "com.mysql.jdbc.Driver";
    private static final String URL_DB = "jdbc:mysql://node6011-daviki.ocs.opusinteractive.io/doancuoiky01?useUnicode=true&characterEncoding=UTF-8";
    // Pass and User
    private static final String USER = "root";
    private static final String PASS = "NYRmri34671";
    // Khai bÃ¡o connect 
    private static Connection conn;
    static Statement statement = null;
    // HÃ m káº¿t ná»‘i vá»› database 
    public static Connection getConnection() {
        try {
        	// Ä�Äƒng kÃ½
            Class.forName(DRIVER_JDBC);
            conn = DriverManager.getConnection(URL_DB, USER, PASS);
            System.out.println("Connected successfully ...");
        } catch (Exception e) {
            System.out.println("Error connection " + e);
        }
        return conn;    
    }
    

 // hÃ m tráº£ danh sÃ¡ch lÆ°u trong ResultSet thÃ´ng qua cÃ¢u truy váº¥n str
 	public static ResultSet ExecuteQueryResultSet(Connection conn, String str) {
 		ResultSet rs = null;
 		try {
 			statement = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
 			rs = statement.executeQuery(str);
 		} catch (SQLException ex) {
 			Logger.getLogger(DBConnectionMySQL.class.getName()).log(Level.SEVERE, null, ex);
 		} 
 		return rs;
 	}
    
 // HÃ m thá»±c hiá»‡n lá»‡nh tráº£ vá»� true hoáº·c false
 	public static boolean MyExcuteUpdateNonQuery(Connection conn, CallableStatement stmt) {
 		boolean f = false;
 		try {
 			stmt.executeUpdate();
 			f = true;
 		} catch (SQLException se) {
 			se.printStackTrace();
 		} catch (Exception e) {
 			e.printStackTrace();
 		} finally {
 			// finally block used to close resources
 			try {
 				if (conn != null || stmt != null) {
 					conn.close();
 				}
 			} catch (SQLException se) {
 			} // do nothing
 			try {
 				if (conn != null) {
 					conn.close();
 				}
 			} catch (SQLException se) {
 				se.printStackTrace();
 			}
 		}
 		return f;
 	}

}
