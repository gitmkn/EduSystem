package cn.makangning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.makangning.entity.Classroom;
import cn.makangning.service.ClassroomService;

@Controller
@RequestMapping("classroom")
public class ClassroomController {

	@Autowired
	private ClassroomService classroomService;

	@RequestMapping("classroom")
	public String Classroom(Model model) {
		//教室管理
		List<Classroom> classroomList = classroomService.selectAll();
		model.addAttribute("classroomList", classroomList);
		System.out.println(classroomList);
		return "classroom/classroom_list";
	}
	
	/**
	 * 课程表的请求
	 * @param model
	 * @return
	 */
	@RequestMapping("classroomlist")
	@ResponseBody
	public List<Classroom> classroomlist(Model model) {
		//教室管理
		List<Classroom> classroomList = classroomService.selectAll();
		System.out.println(classroomList);
		return classroomList;
	}
	/**
	 * 查询学生列表
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
	 * 添加教室
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("add")
	@ResponseBody
	public int add(Classroom classroom) {
		
		Integer rid = classroom.getRid();
		if (rid == 0) {
			return 1;
		}
		// 查看是否重复
		Classroom classroom1 = classroomService.selectByPrimaryKey(rid);
//		System.out.println(userList.size());
		if (classroom1 == null) {
			int insert = classroomService.insert(classroom);
//			System.out.println(user);
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
	 * 修改学生信息
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("update")
	@ResponseBody
	public int update(Classroom classroom) {
		int update = 0;
		Integer rid = classroom.getRid();
		if (rid == 0) {
			return 1;
		}
		try {
			update = classroomService.updateByPrimaryKey(classroom);
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
	 * 教室个数
	 * @param model
	 * @return
	 */
	@RequestMapping("classroomcount")
	@ResponseBody
	public int classroomCount(Model model) {
		//教室管理
		List<Classroom> classroomList = classroomService.selectAll();
		return classroomList.size();
	}
}
