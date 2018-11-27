package cn.makangning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class HomeController {
	
	@RequestMapping("index1")
	public String Index1() {
		return "index1";
	}
	
	@RequestMapping("index")
	public String Index() {
		return "index";
	}
	
	@RequestMapping("student")
	public String Student() {
		return "student/student_list";
	}
	
	@RequestMapping("teacher")
	public String Teacher() {
		return "teacher/teacher_list";
	}
}
