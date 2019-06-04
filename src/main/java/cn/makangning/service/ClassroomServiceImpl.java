package cn.makangning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.makangning.entity.Classroom;
import cn.makangning.entity.Schedule;
import cn.makangning.mapper.ClassroomMapper;
import cn.makangning.mapper.ScheduleMapper;

@Service
public class ClassroomServiceImpl implements ClassroomService{

	@Autowired
	private ClassroomMapper classroomMapper;
	
	@Autowired
	private ScheduleMapper scheduleMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer rid) {
		// TODO Auto-generated method stub
		return classroomMapper.deleteByPrimaryKey(rid);
	}
	@Transactional
	@Override
	public int insert(Classroom record) {
		// TODO Auto-generated method stub
		int i = classroomMapper.insert(record);
		Schedule schedule = new Schedule();
		schedule.setClassroom(record);
		int j = scheduleMapper.insert(schedule);
		return i+j;
	}
	@Override
	public Classroom selectByPrimaryKey(Integer rid) {
		// TODO Auto-generated method stub
		return classroomMapper.selectByPrimaryKey(rid);
	}
	@Override
	public List<Classroom> selectAll() {
		// TODO Auto-generated method stub
		return classroomMapper.selectAll();
	}
	@Override
	public int updateByPrimaryKey(Classroom record) {
		// TODO Auto-generated method stub
		return classroomMapper.updateByPrimaryKey(record);
	}
}
