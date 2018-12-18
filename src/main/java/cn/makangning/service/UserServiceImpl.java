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
	private UserMapper UserMapper;
	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		UserExample userExample = new UserExample();
		Criteria criteria = userExample.createCriteria();
		criteria.andNameEqualTo(user.getName());
		criteria.andPasswordEqualTo(user.getPassword());
		userExample.or(criteria);
		return UserMapper.selectByExample(userExample);
	}

}
