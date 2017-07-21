package edu.scdx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.scdx.dao.UserMapper;
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
}
