package cn.makangning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.makangning.entity.Course;
import cn.makangning.service.CourseService;

@Controller
@RequestMapping("course")
public class CourseController {

	@Autowired
	private CourseService courseService;

	@RequestMapping("course")
	public String Course(Model model) {
		//课程管理
		List<Course> courseList = courseService.selectAll();
		model.addAttribute("courselist", courseList);
		System.out.println(courseList);
		return "course/course_list";
	}
	/**
	 * 添加费用查询课程列表
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("courselist")
	@ResponseBody
	public List<Course> Courselist(Model model) {
		//课程管理
		List<Course> courseList = courseService.selectAll();
		return courseList;
	}
	/**
	 * 查询课程列表
	 * @param id
	 * @param model
	 * @return
	 */
//	@RequestMapping("student/{id}")
//	@ResponseBody
//	public User userList(@PathVariable int id,Model model) {
//		User user = userService.selectByPrimaryKey(id);
//		model.addAttribute("user", user);
//		return user;
//	}
	
	
	/**
	 * 添加课程
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("add")
	@ResponseBody
	public int add(Course course) {
		if (course != null) {
			int insert = courseService.insert(course);
			System.out.println(course);
			if (insert > 0) {
				return 0;
			}
		} else {
			return 2;
		}
		return 1;
	}
//	
	/**
	 * 修改课程信息
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("update")
	@ResponseBody
	public int update(Course course) {
		int update = 0;
		Integer cid = course.getCid();
		System.out.println(course);
		if (cid == 0) {
			return 1;
		}
		try {
			update = courseService.updateByPrimaryKey(course);
			System.out.println(update);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("修改时发生错误");
		}
		if(update > 0) {
			return 0;
		}
		return 2;
	}
	
	/**
	 * 查询总数
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("coursecount")
	@ResponseBody
	public int CourseCount(Model model) {
		//课程管理
		List<Course> courseList = courseService.selectAll();
		return courseList.size();
	}
	
}
