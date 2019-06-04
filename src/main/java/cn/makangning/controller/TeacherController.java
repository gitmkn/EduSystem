package cn.makangning.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.makangning.entity.Schedule;
import cn.makangning.entity.User;
import cn.makangning.service.ScheduleService;
import cn.makangning.service.UserService;
import cn.makangning.util.Md5Util;

@Controller
@RequestMapping("teacher")
public class TeacherController {
	@Autowired
	private UserService userService;
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("teacher")
	public String Teacher(Model model) {
		//教师管理
		System.out.println("123");
		List<User> userList = userService.userList(1);
		model.addAttribute("userList", userList);
		System.out.println(userList);
		return "teacher/teacher_list";
	}
	
	/**
	 * 排课查询老师
	 * @param model
	 * @return
	 */
	@RequestMapping("teacherlist/{week}/{coursetime}")
	@ResponseBody
	public List<User> Teacherlist(@PathVariable int week,@PathVariable int coursetime,Model model) {
		//教师管理
		System.out.println("123");
		System.out.println(week);
		System.out.println(coursetime+1);
		Schedule schedule = new Schedule();
		schedule.setWeek(week);
		schedule.setCoursetime(coursetime+1);
		List<Schedule> scheduleslist = scheduleService.selectByWeekAndCoursetime(schedule);
		List<User> userList = userService.userList(1);
		System.out.println(userList.size());
		for( int i = 0 ; i < scheduleslist.size(); i++) {
			for (int j = 0; j < userList.size(); j++) {
				if (userList.get(j).getUid() == scheduleslist.get(i).getUser().getUid()) {
					userList.remove(j);
				}
			}
		}
		System.out.println(userList);
		return userList;
	}
	/**
	 * 查询教师
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("teacher/{id}")
	@ResponseBody
	public User userList(@PathVariable int id,Model model) {
		User user = userService.selectByPrimaryKey(id);
		model.addAttribute("user", user);
		return user;
	}
	
	
	/**
	 * 添加教师
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("add")
	@ResponseBody
	public int login(User user) {
		
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
//		System.out.println(userList.size());
		if (userList.size() <= 0) {
			user.setPassword(new Md5Util().getMd5("123456"));
			if ("男".equals(user.getSex())) {
				user.setImg("assets/image/1.jpeg");
			} else {
				user.setImg("assets/image/0.jpeg");
			}
			user.setType(1);
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
	 * 修改教师信息
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("update")
	@ResponseBody
	public int update(User user) {
		System.out.println("update已经执行");
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
			System.out.println(user);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("修改时发生错误");
		}
		if(update > 0) {
			return 0;
		}
		return 2;
	}
	
	@RequestMapping("teachercount")
	@ResponseBody
	public int TeacherCount(Model model) {
		//教师管理
		List<User> userList = userService.userList(1);
		return userList.size();
	}
	
}
