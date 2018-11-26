package cn.makangning.controller;

import java.util.List;

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
	
	@RequestMapping("login")
	public void login() {
		User user = new User();
		user.setName("111");
		user.setPassword("111");
		List<User> list = userService.login(user);
		for(User list2 : list) {
			System.out.println(list2);
		}
		
	}
	
	
	@RequestMapping("index")
	public String index() {
		return "index";
	}
}
