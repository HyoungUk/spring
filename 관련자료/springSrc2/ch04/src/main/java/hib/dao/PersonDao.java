package hib.dao;
import java.util.List;

import hib.model.Person;
public interface PersonDao {
	void addPerson(Person p);
	Person getPerson(String id);
	List<Person> list();
	void updatePerson(Person p);
	void removePerson(Person p);

}