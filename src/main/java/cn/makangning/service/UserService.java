package cn.makangning.service;

import java.util.List;

import cn.makangning.entity.User;

public interface UserService {
	public User login(User user);
	
	public List<User> userList(Integer type);
	
	public User selectByPrimaryKey(int id);
}
