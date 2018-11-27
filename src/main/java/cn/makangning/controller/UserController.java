package cn.makangning.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public String login(String username,String password,HttpServletRequest request) {
		System.out.println("login");
		User user = new User();
		user.setName(username);
		user.setPassword(password);
		List<User> list = userService.login(user);
		for(User list2 : list) {
			System.out.println(list2);
		}
		System.out.println(list);
		return "index";
	}
	
	
	@RequestMapping("index")
	public String index() {
		return "index";
	}
}
