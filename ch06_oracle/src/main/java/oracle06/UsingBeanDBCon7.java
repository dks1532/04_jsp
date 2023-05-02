package oracle06;

import java.sql.*;
import java.util.ArrayList;

public class UsingBeanDBCon7 {
	private DBConnectionMgr pool;
	
	public UsingBeanDBCon7() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			System.out.println("Error : 커넥션 얻어오기 실패");
		}
	}
	
	public ArrayList<UsingBean7> getRegisterList() {
		ArrayList<UsingBean7> alist = new ArrayList<UsingBean7>();
		
		Connection con = null;
		
		try {
			con = pool.getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM EMP_INFO");
			
			while(rs.next()) {
				UsingBean7 bean = new UsingBean7();

				bean.setEmp_id(rs.getString(1));
				bean.setEmp_name(rs.getString(2));
				bean.setEmp_no(rs.getString(3));
				bean.setPhone(rs.getString(4));
				bean.setEmail(rs.getString(5));
				
				alist.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return alist;
	}
}
