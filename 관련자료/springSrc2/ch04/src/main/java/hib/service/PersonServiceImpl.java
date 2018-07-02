package hib.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hib.dao.PersonDao;
import hib.model.Person;
@Service 
public class PersonServiceImpl implements PersonService {
	@Autowired
	private PersonDao pd;
	public void addPerson(Person p) {
		pd.addPerson(p);		
	}
	public Person getPerson(String id) {
		return pd.getPerson(id);
	}
	public List<Person> list() {
		return pd.list();
	}
	public void updatePerson(Person p) {
		pd.updatePerson(p);		
	}
	public void removePerson(Person p) {
		pd.removePerson(p);		
	}
}