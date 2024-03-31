package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.User;
import com.utility.DBUtility;

public class UserDao {
	
	
	public int registerEmployee(User employee)
	{
		int result = 0;
		
		
		Connection con=DBUtility.getConnection();
		String sql=" insert into users values(?,?,?,?) ";
		try {
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, employee.getFirstName());
			ps.setString(2, employee.getLastName());
			ps.setString(3, employee.getUsername());
			ps.setString(4, employee.getPassword());
			
			System.out.println(ps);
			result = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return result;
		

		
	}
	
		
	}


