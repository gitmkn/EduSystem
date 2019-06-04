package cn.makangning.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.makangning.entity.Classroom;
import cn.makangning.entity.Cost;
import cn.makangning.entity.Course;
import cn.makangning.entity.User;
import cn.makangning.service.ClassroomService;
import cn.makangning.service.CostService;

@Controller
@RequestMapping("cost")
public class CostController {

	@Autowired
	private CostService costService;

	@RequestMapping("cost")
	public String Student(Model model) {
		//教室管理
		List<Cost> costList = costService.selectAll();
		model.addAttribute("costList", costList);
		System.out.println(costList);
		return "cost/cost_list";
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
	 * 添加c
	 * 
	 * @param 
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("add")
	@ResponseBody
	public int add(Cost cost,User user,Course course) {
		System.out.println(111);
		Date day=new Date();
		cost.setCreatetime(day);
		cost.setUser(user);
		cost.setCourse(course);
		System.out.println(cost);
		int insert = costService.insert(cost);
		if (insert > 0) {
			return 0;
		}else{
			return 1;
		}
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
	public int update(Cost cost,User user,Course course) {
		int update = 0;
		Integer coid = cost.getCoid();
		if (coid == 0) {
			return 1;
		}
		try {
			Date day=new Date();
			cost.setCreatetime(day);
			cost.setUser(user);
			cost.setCourse(course);
			System.out.println(cost);
			update = costService.updateByPrimaryKey(cost);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("修改时发生错误");
		}
		if(update > 0) {
			return 0;
		}
		return 0;
	}
	
	/**
	 * 删除
	 * @param cost
	 * @param user
	 * @param course
	 * @return
	 */
	@RequestMapping("delete")
	@ResponseBody
	public int delete(Cost cost) {
		int update = 0;
		Integer coid = cost.getCoid();
		if (coid == 0) {
			return 1;
		}
		try {
			update = costService.deleteByPrimaryKey(coid);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("修改时发生错误");
		}
		if(update > 0) {
			return 0;
		}
		return 0;
	}
}
