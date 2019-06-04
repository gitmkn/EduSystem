package cn.makangning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.makangning.entity.Schedule;
import cn.makangning.mapper.ScheduleMapper;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	private ScheduleMapper scheduleMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer scid) {
		// TODO Auto-generated method stub
		return scheduleMapper.deleteByPrimaryKey(scid);
	}

	@Override
	public int insert(Schedule record) {
		// TODO Auto-generated method stub
		return scheduleMapper.insert(record);
	}

	@Override
	public Schedule selectByPrimaryKey(Integer scid) {
		// TODO Auto-generated method stub
		return scheduleMapper.selectByPrimaryKey(scid);
	}

	@Override
	public List<Schedule> selectAll() {
		// TODO Auto-generated method stub
		return scheduleMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Schedule record) {
		// TODO Auto-generated method stub
		return scheduleMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Schedule> selectByPrimaryRid(int rid) {
		// TODO Auto-generated method stub
		return scheduleMapper.selectByPrimaryRid(rid);
	}

	@Override
	public List<Schedule> selectByWeekAndCoursetime(Schedule schedule) {
		// TODO Auto-generated method stub
		return scheduleMapper.selectByWeekAndCoursetime(schedule);
	}

}
