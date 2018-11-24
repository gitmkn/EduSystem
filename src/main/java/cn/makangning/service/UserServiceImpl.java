package cn.makangning.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.makangning.entity.User;
import cn.makangning.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		System.out.println(id);
		return userMapper.findById(id);
	}

}
