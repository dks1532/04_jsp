package reply;

import java.sql.*;
import java.util.ArrayList;

public class ReplyMgr {
	private DBConnectionMgr pool;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public ReplyMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public ArrayList<ReplyBean> getReplyList(int ref) {
		ArrayList<ReplyBean> alist = new ArrayList<ReplyBean>();
		
		try {
			con = pool.getConnection();
			sql = "select * from reply where ref = ? order by reno desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ref);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				/*
				ReplyBean bean = new ReplyBean();
				bean.setReno(rs.getInt(1));
				bean.setContent(rs.getString(2));
				...
				alist.add(bean);
				*/
				
				// (위의 주석 코드를 줄이면 아래와 같음)
				alist.add(new ReplyBean(rs.getInt(1),
										rs.getString(2),
										rs.getInt(3),
										rs.getString(4),
										rs.getString(5)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return alist;
	}
	
	// public boolean insertReply(String content, int ref, String name) {
	public int insertReply(ReplyBean bean) {
		int flag = 0;
		
		try {
			con = pool.getConnection();
			sql = "insert into reply values(SEQ_REPLY.NEXTVAL, ?, ?, ?, SYSDATE)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getContent());
			pstmt.setInt(2, bean.getRef());
			pstmt.setString(3, bean.getName());
			flag = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
}
