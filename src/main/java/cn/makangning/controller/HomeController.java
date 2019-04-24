package cn.makangning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.makangning.entity.User;
import cn.makangning.service.UserService;

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
	
	@RequestMapping("student")
	public String Student(Model model) {
		//学生管理
		List<User> userList = userService.userList(0);
		model.addAttribute("userList", userList);
		return "student/student_list";
	}
	
	@RequestMapping("teacher")
	public String Teacher() {
		//教师管理
		return "teacher/teacher_list";
	}
	
	@RequestMapping("course")
	public String Course() {
		//课程管理
		return "course/course_list";
	}
	
	@RequestMapping("classroom")
	public String Classroom() {
		//教室管理
		return "classroom/classroom_list";
	}
	
	@RequestMapping("achievements")
	public String Achievements() {
		//成绩管理
		return "achievements/achievements_list";
	}
	
	@RequestMapping("arrangement")
	public String Arrangement() {
		//成绩管理
		return "arrangement/arrangement_list";
	}
	
	@RequestMapping("charges")
	public String Charges() {
		//收费管理
		return "charges/charges_list";
	}
	
	@RequestMapping("personal")
	public String Personal() {
		//收费管理
		return "user/personal_list";
	}
	
	@RequestMapping("login")
	public String login1() {
		//登录
		return "login";
	}
}
