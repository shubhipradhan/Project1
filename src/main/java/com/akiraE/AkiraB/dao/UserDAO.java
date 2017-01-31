package com.akiraE.AkiraB.dao;



import java.util.List;

import com.akiraE.AkiraB.model.User;




public interface UserDAO {

	public void addUser(User user);
	public void updateUser(User user);
	public void deleteUser(int userId);
	public User getUserById(int userId);
	public List<User> listUsers();
	public User getUserByUsername(String username);

}
