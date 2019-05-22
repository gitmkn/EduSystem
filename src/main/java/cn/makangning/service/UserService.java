package cn.makangning.service;

import java.util.List;

import cn.makangning.entity.User;
import cn.makangning.entity.UserExample;

public interface UserService {
	/**
	 * 用户登录Service
	 * @param user
	 * @return
	 */
	public List<User> login(User user);
	/**
	 * 查询用户列表Service
	 * @param type
	 * @return
	 */
	public List<User> userList(Integer type);
	/**
	 * 根据id查询用户Service
	 * @param id
	 * @return
	 */
	public User selectByPrimaryKey(int id);
	/**
	 * 根据电话查询
	 * @return
	 */
	public List<User> selectByPhone(Long phone);
	/**
	 * 添加用户Service
	 * @param user
	 * @return
	 */
	public int insert(User user);
	/**
	 * 用户信息修改(包括修改密码)
	 * @param user
	 * @return
	 */
	public int update(User user);
	
	/**
	 * 用户信息修改(包括修改密码)
	 * @param user
	 * @return
	 */
	public List<User> selectByTitle(String title);

}
