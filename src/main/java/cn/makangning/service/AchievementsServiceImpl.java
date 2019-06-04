package cn.makangning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.makangning.entity.Achievements;
import cn.makangning.entity.Course;
import cn.makangning.mapper.AchievementsMapper;

@Service
public class AchievementsServiceImpl implements AchievementsService{

	@Autowired
	private AchievementsMapper achievementsMapper;

	@Override
	public int deleteByPrimaryKey(Integer aid) {
		// TODO Auto-generated method stub
		return achievementsMapper.deleteByPrimaryKey(aid);
	}

	@Override
	public int insert(Achievements record) {
		// TODO Auto-generated method stub
		return achievementsMapper.insert(record);
	}

	@Override
	public Achievements selectByPrimaryKey(Integer aid) {
		// TODO Auto-generated method stub
		return achievementsMapper.selectByPrimaryKey(aid);
	}

	@Override
	public List<Achievements> selectAll() {
		// TODO Auto-generated method stub
		return achievementsMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Achievements record) {
		// TODO Auto-generated method stub
		return achievementsMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Achievements> selectByPrimaryUid(Integer uid) {
		// TODO Auto-generated method stub
		return achievementsMapper.selectByPrimaryUid(uid);
	}
	
	
}
