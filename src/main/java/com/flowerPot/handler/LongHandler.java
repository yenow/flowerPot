package com.flowerPot.handler;

import java.io.StringReader;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

public class LongHandler implements TypeHandler{
	@Override

	public void setParameter(PreparedStatement ps, int i, Object parameter, JdbcType jdbcType)

	throws SQLException {

	String s = (String) parameter;

	StringReader reader = new StringReader(s);

	ps.setCharacterStream(i, reader, s.length());

	}



	// 이외 ~로 칼럼값 불러오는 메소드

	@Override

	public Object getResult(ResultSet rs, String columnName) throws SQLException {

	return rs.getString(columnName);

	}



	@Override

	public Object getResult(ResultSet arg0, int arg1) throws SQLException {

	return arg0.getObject(arg1);

	}



	@Override

	public Object getResult(CallableStatement arg0, int arg1) throws SQLException {

	// TODO Auto-generated method stub

	return arg0.getObject(arg1);

	}
}
