package hib.dao;
import java.util.List;

import hib.model.Person;
public interface PersonDao {
	int addPerson(Person p);
	Person getPerson(String id);
	List<Person> findPerson();
	void updatePerson(Person person);
	void deletePerson(Person person);

}