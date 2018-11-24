package cn.makangning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.makangning.entity.User;
import cn.makangning.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("get")
	public void get() {
		int id = 1;
		System.out.println(1);
		User user  = userService.findById(id);
		System.out.println(user);
	}

}
