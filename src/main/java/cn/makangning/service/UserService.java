package cn.makangning.service;

import java.util.List;

import cn.makangning.entity.User;
import cn.makangning.entity.UserExample;

public interface UserService {
	public List<User> login(User user);
	
	public List<User> userList(Integer type);
	
	public User selectByPrimaryKey(int id);
}
