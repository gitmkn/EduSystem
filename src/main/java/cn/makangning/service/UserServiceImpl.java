package cn.makangning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.makangning.entity.User;
import cn.makangning.entity.UserExample;
import cn.makangning.entity.UserExample.Criteria;
import cn.makangning.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> login(User user) {
		// TODO Auto-generated method stub
		UserExample userExample = new UserExample();
		Criteria criteria = userExample.createCriteria();
		criteria.andPhoneEqualTo(user.getPhone());
		criteria.andPasswordEqualTo(user.getPassword());
		userExample.or(criteria);
		return userMapper.selectByExample(userExample);
	}
	
	@Override
	public List<User> userList(Integer type) {
		// TODO Auto-generated method stub
		return userMapper.selectUserList(type);
	}

	@Override
	public User selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return userMapper.selectByPrimaryKey(id);
	}
}
