package com.ch.shopping2.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.shopping2.dao.DeptDao;
import com.ch.shopping2.dao.ItemDao;
import com.ch.shopping2.model.Dept;
import com.ch.shopping2.model.Item;
@Service
public class ItemServiceImpl implements ItemService {
	@Autowired
	private ItemDao id;
	@Autowired
	private DeptDao dd;
	public List<Item> list() {
		return id.list();
	}
	public Item select(String itemId) {
		return id.select(itemId);
	}
	public List<Dept> deptList() {
		return dd.deptList();
	}
	public Dept deptDetail(int deptno) {
		return dd.deptDetail(deptno);
	}
}