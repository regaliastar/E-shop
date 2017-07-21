package edu.scdx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import edu.scdx.entity.User;

@Repository
public interface UserMapper {
	public List<User> getAll();
	public User getUserById(@Param("id")Integer id);
	public void insertUser(User user);
}
