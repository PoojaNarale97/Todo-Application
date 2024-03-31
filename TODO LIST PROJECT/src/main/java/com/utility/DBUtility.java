package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtility {
	public static final String 	USERNAME="root";
	public static final String PASSWORD="root";
	public static final String URL="jdbc:mysql://localhost:3306/TODO";
	public static Connection con;
	
	
	public static Connection getConnection()
	{
		try
		{
			if(con!=null)
			{
				return con;
			}
			else
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection(URL,USERNAME,PASSWORD);				
			}
			
			
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	
	
}
