package cn.maknagning.controller;

import java.util.List;

import cn.makangning.entity.User;
import cn.makangning.service.UserService;
import cn.makangning.service.UserServiceImpl;

public class Test {
	public static void main(String[] args) {
		UserService userService = new UserServiceImpl();
//		User user = new User();
//		user.setName("111");
//		user.setPassword("111");
//		List<User> list = userService.login(user);
//		for(User list1 : list) {
//			System.out.println(user.getName());
//		}
		int i = 1;
		User user = userService.findById(i);
		System.out.println(user);
	}
}
