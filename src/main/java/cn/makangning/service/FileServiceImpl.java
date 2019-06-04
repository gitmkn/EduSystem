package cn.makangning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.makangning.entity.Files;
import cn.makangning.mapper.FileMapper;
@Service
public class FileServiceImpl implements FileService{

	@Autowired
	private FileMapper fileMapper;
	
	@Override
	public int deleteByPrimaryKey(String fid) {
		// TODO Auto-generated method stub
		return fileMapper.deleteByPrimaryKey(fid);
	}

	@Override
	public int insert(Files record) {
		// TODO Auto-generated method stub
		return fileMapper.insert(record);
	}

	@Override
	public Files selectByPrimaryKey(Integer fid) {
		// TODO Auto-generated method stub
		return fileMapper.selectByPrimaryKey(fid);
	}

	@Override
	public List<Files> selectAll() {
		// TODO Auto-generated method stub
		return fileMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Files record) {
		// TODO Auto-generated method stub
		return fileMapper.updateByPrimaryKey(record);
	}

	@Override
	public List<Files> selectByPrimaryUid(Integer uid) {
		// TODO Auto-generated method stub
		return fileMapper.selectByPrimaryUid(uid);
	}

	@Override
	public List<Files> selectByPrimaryCid(Integer cid) {
		// TODO Auto-generated method stub
		return fileMapper.selectByPrimaryCid(cid);
	}

}
