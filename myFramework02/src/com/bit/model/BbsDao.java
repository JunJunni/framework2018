package com.bit.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bit.model.entity.BbsVo;
import com.bit.util.JdbcTemplate1;

//디자인패턴
//TemapletMethod 패턴 ( 이게 서로 다른부분 을 빼내서 함수를만들고, 완전 밖으로 빼내벌임 ) jdbcTemplate으로 


public class BbsDao {
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

	public ArrayList<BbsVo> selectAll() throws SQLException {
		ArrayList<BbsVo> list = new ArrayList<BbsVo>();
		String sql = "SELECT * FROM BBS2 ORDER BY IDX DESC";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next())
				list.add(new BbsVo(rs.getInt("idx"), rs.getString("sub"), rs
						.getString("content"), rs.getTimestamp("ddate"), rs
						.getInt("cnt")));
		} finally {
			close();
		}
		return list;

	}// selectall end
	public BbsVo selectOne(int idx) throws SQLException{
		BbsVo bean = new BbsVo();
		String sql="select * from bbs2 where idx=?";
		try{
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setIdx(rs.getInt("idx"));
				bean.setSub(rs.getString("sub"));
				bean.setContent(rs.getString("content"));
				bean.setDdate(rs.getTimestamp("ddate"));
				bean.setCnt(rs.getInt("cnt"));
			}
		}finally{close();}
		return bean;
	}

	
	
	public void insertOne(BbsVo bean) throws SQLException {
		JdbcTemplate1 template= new JdbcTemplate1();
		
		template.executeUpdate("INSERT INTO BBS2(SUB,CONTENT,DDATE,CNT) VALUES (?,?,NOW(),0)", bean);
	}

	public int updateOne(BbsVo bean) throws SQLException{
		int result=0;
		String sql = "UPDATE BBS SET SUB=?, CONTENT=? WHERE IDX=?";
		try{
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,bean.getSub());
			pstmt.setString(2,bean.getContent());
			pstmt.setInt(3,bean.getIdx() );
		}finally{
			close();
		}
		return result;
	}
	
	public int delOne(int idx) throws SQLException{
		int result=0;
		String sql = "delete from bbs2 where idx=?";
		try{
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,idx);
		}finally{
			close();
		}
		return result;
	}

}
