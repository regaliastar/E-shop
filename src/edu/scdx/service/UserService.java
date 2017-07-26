package edu.scdx.service;

import java.util.List;

import edu.scdx.entity.Address;
import edu.scdx.entity.User;

public interface UserService {
	public  List<User> getAll();
	public User findUserById(Integer id);
	public void addUser(User user);
	public User findUserByName(String name);
	
	public void addAddress(Address address);
	public List<Address> getAddress(Integer id);
	public int findAddressNum(Integer id);
	public Address findCurrentAddress(Integer id);
	public void setCurrentAddress(Integer Aid,Integer Uid);
	public void setCurrentAddress_0(Integer Uid);
}
