package dao;

import java.sql.SQLException;

import model.User;

public interface UserDAO{
	User login(User user) throws SQLException;
	boolean register(User user) throws SQLException, ClassNotFoundException;
	boolean doesUserExists(User user) throws SQLException, ClassNotFoundException;
}
