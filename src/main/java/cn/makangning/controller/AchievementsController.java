package cn.makangning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.makangning.entity.Achievements;
import cn.makangning.entity.Course;
import cn.makangning.entity.User;
import cn.makangning.service.AchievementsService;

@Controller
@RequestMapping("achievements")
public class AchievementsController {

	@Autowired
	private AchievementsService achievementsService;

	@RequestMapping("achievements")
	public String Achievements(Model model) {
		//教室管理
		List<Achievements> achievementsList = achievementsService.selectAll();
		model.addAttribute("achievementslist", achievementsList);
//		System.out.println(achievementsList);
		return "achievements/achievements_list";
	}
	
	@RequestMapping("achievementslist/{uid}")
	public String AchievementsById(@PathVariable int uid,Model model) {
		//教室管理
		List<Achievements> achievementsList = achievementsService.selectByPrimaryUid(uid);
		model.addAttribute("achievementslist", achievementsList);
		model.addAttribute("achievementslistuid", uid);
//		System.out.println(achievementsList);
		return "achievements/achievements_list";
	}
	
	/**
	 * 修改成绩信息
	 * 
	 * @param user
	 * @param request
	 * @return 0：成功 1：错误 2：电话重复
	 */
	@RequestMapping("update")
	@ResponseBody
	public int update(Achievements achievements,User user,Course course) {
		int update = 0;
		Integer aid = achievements.getAid();
		if (aid == 0) {
			return 1;
		}
		try {
			achievements.setUser(user);
			achievements.setCourse(course);
//			System.out.println(achievements);
			update = achievementsService.updateByPrimaryKey(achievements);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("修改时发生错误");
		}
		if(update > 0) {
			return 0;
		}
		return 1;
	}
}
