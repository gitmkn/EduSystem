package cn.makangning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.makangning.entity.Achievements;
import cn.makangning.entity.Cost;
import cn.makangning.mapper.CostMapper;

@Service
public class CostServiceImpl implements CostService{

	@Autowired
	private CostMapper costMapper;
	
	@Autowired
	private AchievementsService achievementsService;
	
	@Override
	public int deleteByPrimaryKey(Integer coid) {
		// TODO Auto-generated method stub
		return costMapper.deleteByPrimaryKey(coid);
	}

	@Transactional
	@Override
	public int insert(Cost record) {
		// TODO Auto-generated method stub
		Achievements achievements = new Achievements();
		achievements.setUser(record.getUser());
		achievements.setCourse(record.getCourse());
		achievementsService.insert(achievements);
		return costMapper.insert(record);
	}

	@Override
	public Cost selectByPrimaryKey(Integer coid) {
		// TODO Auto-generated method stub
		return costMapper.selectByPrimaryKey(coid);
	}

	@Override
	public List<Cost> selectAll() {
		// TODO Auto-generated method stub
		return costMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Cost record) {
		// TODO Auto-generated method stub
		return costMapper.updateByPrimaryKey(record);
	}

}
