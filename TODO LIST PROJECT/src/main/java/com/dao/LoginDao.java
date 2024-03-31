package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.Login;
import com.utility.DBUtility;

public class LoginDao {
	
	
	public boolean validate(Login login)
	{
		boolean status = false;

		Connection con=DBUtility.getConnection();
		String sql=" select * from users where username = ? and password = ? ";
		try {
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, login.getUsername());
			ps.setString(2, login.getPassword());
			
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			status = rs.next();

			
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
		

		
	}
	

}
