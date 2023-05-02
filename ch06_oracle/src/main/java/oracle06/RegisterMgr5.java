package oracle06;

import java.sql.*;
import java.util.ArrayList;

public class RegisterMgr5 {
	private final String JDBC_DRIVER = "oracle.jdbc.OracleDriver";
	private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String USER = "kh";
	private final String PASS = "1234";
	
	public RegisterMgr5() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<RegisterBean5> getRegisterList() {
		ArrayList<RegisterBean5> alist = new ArrayList<RegisterBean5>();
		try {
			Connection  con = DriverManager.getConnection(JDBC_URL, USER, PASS);
			Statement st = con.createStatement();
			String strQuery = "select * from employee";
			ResultSet rs = st.executeQuery(strQuery);
			while(rs.next()) {
				RegisterBean5 bean = new RegisterBean5();
				bean.setEmp_id(rs.getString("emp_id"));
				bean.setEmp_name(rs.getString("emp_name"));
				bean.setEmail(rs.getString("email"));
				bean.setPhone(rs.getString("phone"));
				bean.setDept_code(rs.getString("dept_code"));
				bean.setSalary(rs.getInt("salary"));
				alist.add(bean);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return alist;	
	}
}
