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
	public int addPerson(Person p) {
		return pd.addPerson(p);		
	}
	public Person getPerson(String id) {
		return pd.getPerson(id);
	}
	public List<Person> findPerson() {
		return pd.findPerson();
	}
	public void update(Person person) {
		pd.updatePerson(person);		
	}
	public void deletePerson(Person person) {
		pd.deletePerson(person);		
	}	
}