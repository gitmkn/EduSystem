package cn.makangning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.makangning.entity.Classroom;
import cn.makangning.entity.Course;
import cn.makangning.entity.Schedule;
import cn.makangning.entity.User;
import cn.makangning.service.ScheduleService;

@Controller
@RequestMapping("schedule")
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping("schedule")
	public String Schedule(Model model) {
		return "schedule/schedule_list";
	}
	
	@RequestMapping("schedulelist/{rid}")
	@ResponseBody
	public List<Schedule> ScheduleList(@PathVariable int rid,Model model) {
		//课表管理
		System.out.println(rid);
		List<Schedule> scheduleList = scheduleService.selectByPrimaryRid(rid);
		System.out.println(scheduleList);
		return scheduleList;
	}
	
	
	@RequestMapping("update")
	@ResponseBody
	public int ScheduleUpdate(Schedule schedule,User user,Course course,Classroom classroom) {
		//课表管理
		schedule.setUser(user);
		schedule.setCourse(course);
		schedule.setClassroom(classroom);
		System.out.println(schedule);
		int i = scheduleService.updateByPrimaryKey(schedule);
		if(i > 0) {
			return 0;
		}
		return 1;
	}
	
	@RequestMapping("add")
	@ResponseBody
	public int ScheduleAdd(Schedule schedule,User user,Course course,Classroom classroom) {
		//课表管理
		schedule.setUser(user);
		schedule.setCourse(course);
		schedule.setClassroom(classroom);
		System.out.println(schedule);
		int i = scheduleService.insert(schedule);
		if(i > 0) {
			return 0;
		}
		return 1;
	}
	@RequestMapping("delete")
	@ResponseBody
	public int ScheduleDelete(Schedule schedule) {
		//课表删除
		int i = scheduleService.deleteByPrimaryKey(schedule.getScid());
		if(i > 0) {
			return 0;
		}
		return 1;
	}
}
