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
		//当根据部分信息查询时
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
	
	@Override
	public List<User> selectByPhone(Long phone) {
		// TODO Auto-generated method stub
		UserExample userExample = new UserExample();
		Criteria criteria = userExample.createCriteria();
		criteria.andPhoneEqualTo(phone);
		userExample.or(criteria);
		userExample.setOrderByClause("phone desc");
		return userMapper.selectByExample(userExample);
	}

	@Override
	public int insert(User user) {
		// TODO Auto-generated method stub
		return userMapper.insert(user);
	}
	
	@Override
	public int update(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateByPrimaryKeySelective(user);
	}
	
	@Override
	public List<User> selectByTitle(String title) {
		// TODO Auto-generated method stub
		UserExample example = new UserExample();
		
		Criteria criteria1 = example.createCriteria();
		String name = "%"+title+"%";
		criteria1.andNameLike(name);
		
		example.setOrderByClause("phone desc");
		return userMapper.selectByExample(example);
	}
}
