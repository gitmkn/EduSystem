package cn.makangning.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.makangning.entity.User;
import cn.makangning.service.UserService;

@Controller
@RequestMapping("home")
public class HomeController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("login")
	public String login(String username,String password,HttpServletRequest request) {
		System.out.println("login");
		System.out.println(username);
		System.out.println(password);
		User user = new User();
		user.setName(username);
		user.setPassword(password);
		HttpSession session = request.getSession();
		if(userService.login(user).size() > 0) {
			session.setAttribute("userinfo", user.getName());
			return "index";
		}
		return "login";
	}
	
	@RequestMapping("index")
	public String Index() {
		//首页
		return "index";
	}
	
	@RequestMapping("student")
	public String Student() {
		//学生管理
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

}
