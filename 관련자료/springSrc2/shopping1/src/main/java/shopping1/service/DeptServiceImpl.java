package shopping1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shopping1.dao.DeptDao;
import shopping1.model.Dept;

@Repository
public class DeptServiceImpl implements DeptService {
	@Autowired
	private DeptDao dd;

	@Override
	public List<Dept> list() {
		// TODO Auto-generated method stub
		return dd.list();
	}
	
}
