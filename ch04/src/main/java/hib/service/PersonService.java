package hib.service;
import java.util.List;

import hib.model.Person;
public interface PersonService {
	int addPerson(Person p);
	Person getPerson(String string);
	List<Person> findPerson();
	void update(Person person);
	void deletePerson(Person person);

}