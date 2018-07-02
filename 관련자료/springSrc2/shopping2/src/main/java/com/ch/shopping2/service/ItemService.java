package com.ch.shopping2.service;
import java.util.List;
import com.ch.shopping2.model.Dept;
import com.ch.shopping2.model.Item;
public interface ItemService {
	List<Item> list();
	Item select(String itemId);
	List<Dept> deptList();
	Dept deptDetail(int deptno);

}