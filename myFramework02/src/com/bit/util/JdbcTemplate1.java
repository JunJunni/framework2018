package com.bit.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bit.model.BbsDao;
import com.bit.model.entity.BbsVo;

public abstract class JdbcTemplate1 {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public Connection getConnection() throws SQLException {
		
		String url = "jdbc:mysql://localhost:3306/mysql?useUnicode=true&amp;characterEncoding=utf8";
		String user = "class01";
		String password = "1234";

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn = DriverManager.getConnection(url, user, password);
		return conn;
	}// end getconnection
	
	public void close() throws SQLException{
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	} // end close
	public abstract void setParameter(BbsVo bean) throws SQLException{
	
	}
	
	public int executeUpdate(String sql, BbsVo bean, B) throws SQLException{
		try{
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			setParameter(bean);
			return pstmt.executeUpdate();
			/////
		}finally{
			close();
		}
	}//end executeUpdate
}
