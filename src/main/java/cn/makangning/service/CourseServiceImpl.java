package cn.makangning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.makangning.entity.Course;
import cn.makangning.mapper.CourseMapper;

@Service
public class CourseServiceImpl implements CourseService{

	@Autowired
	private CourseMapper courseMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer cid) {
		// TODO Auto-generated method stub
		return courseMapper.deleteByPrimaryKey(cid);
	}

	@Override
	public int insert(Course record) {
		// TODO Auto-generated method stub
		return courseMapper.insert(record);
	}

	@Override
	public Course selectByPrimaryKey(Integer cid) {
		// TODO Auto-generated method stub
		return courseMapper.selectByPrimaryKey(cid);
	}

	@Override
	public List<Course> selectAll() {
		// TODO Auto-generated method stub
		return courseMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Course record) {
		// TODO Auto-generated method stub
		return courseMapper.updateByPrimaryKey(record);
	}

}
