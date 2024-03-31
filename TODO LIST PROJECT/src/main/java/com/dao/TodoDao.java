package com.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.TODO;
import com.utility.DBUtility;

public class TodoDao {
	
	
	public int addTodo(TODO todo)
	{
		int val=0;
		Connection con=DBUtility.getConnection();
		String sql="insert into  todo values(?,?,?,?,?,?)";
         try {
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, todo.getId());			
			ps.setString(2, todo.getTitle());
			ps.setString(3, todo.getUsername());
			ps.setString(4, todo.getDescription());
			ps.setDate(5, Date.valueOf(todo.getTargetDate())); // Use valueOf() method
			ps.setBoolean(6, todo.isStatus());
			val=ps.executeUpdate();	
	       }
	catch (Exception e) {
		System.out.println(e);
	}
	return val;

    }
	
	public List<TODO> getAllTodo() {
		Connection con = DBUtility.getConnection();
		String sql="SELECT * FROM todo";
        List<TODO> todoList = new ArrayList<>();
        
        try {
        	PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
           
           while (rs.next()) 
           {
               TODO todo = new TODO(
                   rs.getInt(1), 
                   rs.getString(2), 
                   rs.getString(3), 
                   rs.getString(4), 
                   rs.getTimestamp(5).toLocalDateTime().toLocalDate(),
                   rs.getBoolean(6)
               );
               todoList.add(todo);
           }
        } catch (Exception e) {
        	System.out.println(e);
        }
        return todoList;
    }
	
	public int updateTodoById(TODO todo)
	{
		int val=0;
		Connection con=DBUtility.getConnection();
		String sql="update todo set title=?,username=?,description=?,target_Date=?,is_Done=? where id=?";
         try {
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(6, todo.getId());
			ps.setString(1, todo.getTitle());
			ps.setString(2, todo.getUsername());			
			ps.setString(3, todo.getDescription());
			ps.setDate(4, Date.valueOf(todo.getTargetDate())); // Use valueOf() method
			ps.setBoolean(5, todo.isStatus());
			val=ps.executeUpdate();	
	       }
	catch (Exception e) {
		System.out.println(e);
	}
	return val;

    }
	
	public int deleteTodoById(TODO todo)
	{
		int val=0;
		Connection con=DBUtility.getConnection();
		String sql="delete from todo where id=?";
         try {
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, todo.getId());			
			val=ps.executeUpdate();	
	       }
	catch (Exception e) {
		System.out.println(e);
	}
	return val;

    }
}


