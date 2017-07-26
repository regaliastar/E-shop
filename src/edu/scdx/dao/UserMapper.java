package edu.scdx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import edu.scdx.entity.Address;
import edu.scdx.entity.User;

@Repository
public interface UserMapper {
	public List<User> getAll();
	public User getUserById(@Param("id")Integer id);
	public void insertUser(User user);
	public User getUserByName(String uname);
	
	public void insertAddress(Address address);
	public List<Address> getAddress(@Param("id")Integer id);
	public int findAddressNum(@Param("id")Integer id);
	public Address findCurrentAddress(@Param("id")Integer id);
	public void setCurrentAddress(@Param("Aid")Integer Aid,@Param("Uid")Integer Uid);
	public void setCurrentAddress_0(@Param("Uid")Integer Uid);
	public void updateAddress(Address address);
	public Address findAddressbyAid(@Param("id")Integer id);
	public void deleteAddress(@Param("id")Integer id);
}
