package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.User;

public class UserDAOImpl extends DBConnection implements UserDAO{

	@Override
	public User login(User user) throws SQLException {
		Connection con = super.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM user WHERE emailAddress='"+user.getEmailAddress()+"' AND password='"+user.getPassword()+"';");
       
        while(rs.next()) {
            return new User(rs.getString(1),rs.getString(2),rs.getString(3));
        }
		return null;
	}

	@Override
	public boolean register(User user) throws SQLException, ClassNotFoundException {
		if(!doesUserExists(user)) {
			Connection con = super.getConnection();
			Statement stmt = con.createStatement();
	        stmt.executeUpdate("INSERT INTO `user`(`displayName`, `emailAddress`,`password`) VALUES ('" +user.getDisplayName() + "','" + user.getEmailAddress() + "','"+user.getPassword()+"');");
	        super.closeConnection(con);
	        return true;
		}
		return false;
	}

	@Override
	public boolean doesUserExists(User user) throws SQLException, ClassNotFoundException {
		Connection con = super.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT COUNT(emailAddress) FROM user WHERE emailAddress='"+user.getEmailAddress()+"'");
        int check = 0;
        while(rs.next()) {
            check = rs.getInt(1);
        }
        super.closeConnection(con);
		if(check>0) {
			return true;
		}else {
			return false;
		}
	}
	
}
