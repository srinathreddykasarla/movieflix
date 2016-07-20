package io.egen.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import io.egen.entity.Admin;
import io.egen.entity.BrowseList;
import io.egen.entity.Comments;
import io.egen.entity.User;
import io.egen.util.DBUtils;

import org.springframework.stereotype.Service;

@Service
public class AdminService {

	
	public Boolean validate(Admin admin){
	      boolean st =false;
	      try{
	         DBUtils db = new DBUtils();
	         Connection con=db.connect();
	         PreparedStatement ps =con.prepareStatement("select userid from admin where userid='"+admin.getUserid()+"' and password='"+admin.getPassword()+"'");
	         ResultSet rs =ps.executeQuery();
	         st = rs.next();
	      }catch(Exception e)
	      {
	          e.printStackTrace();
	      }
	      return st;
	}
	
	public Admin getdetails(Admin admin){
		try{


		 	 //creating connection with the database 
		         Connection con=db.connect();
		         PreparedStatement ps =con.prepareStatement("select * from admin where userid='"+admin.getUserid()+"' and password='"+admin.getPassword()+"'");
		         ResultSet rs =ps.executeQuery();
		         while (rs.next()) {
		         admin.setFirstName(rs.getString("firstname"));
		         admin.setLastName(rs.getString("lastname"));
		         }
		      }catch(Exception e)
		      {
		          e.printStackTrace();
		      }
		      return admin;
	}
	
	
	public void addTitle(BrowseList bl) {
		String query = "insert into movie values ('"+bl.getImdbId()+"','"+bl.getActors()+"','"+bl.getAwards()+"','"+bl.getCountry()+"','"+bl.getDirector()+"','"+bl.getGenre()+"','"+bl.getLanguage()+"','"+bl.getMetascore()+"','"+bl.getPlot()+"','"+bl.getPoster()+"','"+bl.getRated()+"','"+bl.getReleased()+"','"+bl.getRuntime()+"','"+bl.getTitle()+"','"+bl.getType()+"','"+bl.getWriter()+"','"+bl.getYear()+"','"+bl.getImdbRating()+"','"+bl.getImdbVotes()+"')";
		//System.out.println(query);
		Connection con = DBUtils.connect();
		Statement st = null;
	
		try {
			st = con.createStatement(); 
			st.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (st != null) {
					st.close();
				}
				
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	
	public void editTitle(String attName,String attVal,String imdbId) {
		String query = "UPDATE Movie SET "+attName+" ='"+attVal+"'where imdbid = '"+imdbId+"'";
		//System.out.println(query);
		Connection con = DBUtils.connect();
		Statement st = null;
	
		try {
			st = con.createStatement(); 
			st.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (st != null) {
					st.close();
				}
				
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	public void deleteTitle(String imdbId) {
		String query = "DELETE FROM Movie WHERE imdbid = '"+imdbId+"'";
		//System.out.println(query);
		Connection con = DBUtils.connect();
		Statement st = null;
	
		try {
			st = con.createStatement(); 
			st.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (st != null) {
					st.close();
				}
				
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	
}
