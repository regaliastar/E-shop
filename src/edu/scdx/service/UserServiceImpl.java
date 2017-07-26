package edu.scdx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.scdx.dao.UserMapper;
import edu.scdx.entity.Address;
import edu.scdx.entity.User;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    
	public List<User> getAll(){
        return userMapper.getAll();
    }

	@Override
	public User findUserById(Integer id) {
		return userMapper.getUserById(id);
	}
	@Override
	public void addUser(User user) {
		userMapper.insertUser(user);
	}

	@Override
	public User findUserByName(String uname) {
		// TODO Auto-generated method stub
		return userMapper.getUserByName(uname);
	}
	
	
	@Override
	public void addAddress(Address address) {
		userMapper.insertAddress(address);
	}
	
	@Override
	public List<Address> getAddress(Integer id) {
		// TODO Auto-generated method stub
		return  userMapper.getAddress(id);
	}

	@Override
	public int findAddressNum(Integer id) {
		return userMapper.findAddressNum(id);
	}

	@Override
	public Address findCurrentAddress(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.findCurrentAddress(id);
	}
	
	public void setCurrentAddress(Integer Aid,Integer Uid) {
		// TODO Auto-generated method stub
	    userMapper.setCurrentAddress(Aid,Uid);
	}


	@Override
	public void setCurrentAddress_0(Integer Uid) {
		// TODO Auto-generated method stub
		 userMapper.setCurrentAddress_0(Uid);
	}
	
}
