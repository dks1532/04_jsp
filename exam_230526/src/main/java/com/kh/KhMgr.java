package com.kh;

import java.sql.Connection;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

public class KhMgr {

private DBConnectionMgr pool;

Connection con = null;

PreparedStatement pstmt = null;

ResultSet rs = null;

String sql = null;

public KhMgr() {

pool = DBConnectionMgr.getInstance();

}

public KhBean selectOneKh(String khName) {

KhBean bean = new KhBean();

try {

con = pool.getConnection();

sql = "select * from kh_tbl where khname=?";

pstmt = con.prepareStatement(sql);

pstmt.setString(1, khName);

rs = pstmt.executeQuery();

if(rs.next()) {

bean.setKhno(rs.getInt(1));

bean.setKhname(rs.getString(2));

bean.setAddr(rs.getString(3));

bean.setFax(rs.getString(4));

}

} catch (Exception e) {

e.printStackTrace();

} finally {

pool.freeConnection(con, pstmt, rs);

}

return bean;

}

}