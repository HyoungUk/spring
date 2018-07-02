package shopping1.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import shopping1.dao.ItemDao;
import shopping1.model.Item;
@Service
public class ItemServiceImpl implements ItemService {
	@Autowired
	private ItemDao id;
	public List<Item> list() {
		return id.list();
	}
}