package edu.scdx.service;

import java.util.List;

import edu.scdx.entity.User;

public interface UserService {
	public  List<User> getAll();
	public User findUserById(Integer id);
	public void addUser(User user);
	
	public User findUserByName(String name);
}