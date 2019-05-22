package cn.makangning.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.makangning.entity.User;
import cn.makangning.service.UserService;
import cn.makangning.util.Md5Util;

@Controller
@RequestMapping("home")
public class HomeController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("index")
	public String Index() {
		//首页
		return "index";
	}
	@RequestMapping("login")
	public String login1() {
		//登录
		return "login";
	}
	@RequestMapping("password/{password}/{password2}")
	@ResponseBody
	public int password(@PathVariable String password,@PathVariable String password2, HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userinfo");
		String password1 = new Md5Util().getMd5(password);
		if (!user.getPassword().equals(password1)) {
			return 1;
		}else {
			user.setPassword(new Md5Util().getMd5(password2));
			int update = userService.update(user);
			if (update > 0) {
				System.out.println("密码修改成功");
				return 0;
			}
		}
		return 2;
		
	}
	
	/**
	 * 修改密码
	 * @return
	 */
	@RequestMapping("userupdate")
	public int updateUser(User user) {
		
		return 1;
	}
	
	
	@RequestMapping("updatepassword")
	public int update(User user) {
		if(!"".equals(user.getPassword())&&!"null".equals(user.getPassword())) {
			int update = userService.update(user);
			if (update > 0) {
				return 0;
			}
		}
		return 1;
	}
	
	/**
	 * 退出登录
	 * @param request
	 * @return
	 */
	@RequestMapping("exit")
	public String exit(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "login";
	}
}
