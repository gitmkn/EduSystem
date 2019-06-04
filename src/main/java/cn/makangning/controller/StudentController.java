package cn.makangning.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.makangning.entity.User;
import cn.makangning.service.UserService;
import cn.makangning.util.Md5Util;

@Controller
@RequestMapping("students")
public class StudentController {

	@Autowired
	private UserService userService;

	@RequestMapping("student")
	public String Student(Model model) {
		//学生管理
		List<User> userList = userService.userList(0);
		model.addAttribute("userList", userList);
		return "student/student_list";
	}
	
	/**
	 * 添加费用学生列表
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("studentlist")
	@ResponseBody
	public List<User> StudentList(Model model) {
		//学生管理
		List<User> userList = userService.userList(0);
		return userList;
	}
	/**
	 * 查询学生列表
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("student/{id}")
	@ResponseBody
	public User userList(@PathVariable int id,Model model) {
		User user = userService.selectByPrimaryKey(id);
		model.addAttribute("user", user);
		return user;
	}
	
	
	/**
	 * 添加学生
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("add")
	@ResponseBody
	public int addStudent(User user) {
		
		String name = user.getName();
		Long phone = user.getPhone();
		if ("".equals(name) && "null".equals(name)) {
			return 1;
		}
		if (phone == null) {
			return 1;
		}
		// 查看电话是否重复
		List<User> userList = userService.selectByPhone(phone);
		System.out.println(userList.size());
		if (userList.size() <= 0) {
			user.setPassword(new Md5Util().getMd5("123456"));
			if ("男".equals(user.getSex())) {
				user.setImg("assets/image/1.jpeg");
			} else {
				user.setImg("assets/image/0.jpeg");
			}
			user.setType(0);
			int insert = userService.insert(user);
//			System.out.println(user);
			if (insert > 0) {
				return 0;
			}
		} else {
			return 2;
		}
		return 1;
	}
	
	/**
	 * 修改学生信息
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("update")
	@ResponseBody
	public int update(User user) {
		int update = 0;
		String name = user.getName();
		Long phone = user.getPhone();
		if ("".equals(name) && "null".equals(name)) {
			return 1;
		}
		if (phone == null) {
			return 1;
		}
		try {
			update = userService.update(user);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("修改时发生错误");
		}
		if(update > 0) {
			return 0;
		}
		return 2;
	}
	
	
	@RequestMapping("studentFuzzy/{title}")
	public String StudentFuzzy(@PathVariable String title,Model model) {
		//学生管理
		List<User> userList = userService.selectByTitle(title);
		model.addAttribute("userList", userList);
		System.out.println(userList);
		return "student/student_list";
	}
	
	
	@RequestMapping("studentcount")
	@ResponseBody
	public int StudentCount(Model model) {
		//学生管理
		List<User> userList = userService.userList(0);
		return userList.size();
	}
}
