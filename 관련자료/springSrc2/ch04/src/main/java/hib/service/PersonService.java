package hib.service;
import java.util.List;

import hib.model.Person;
public interface PersonService {
	void addPerson(Person p);
	Person getPerson(String id);
	List<Person> list();
	void updatePerson(Person p);
	void removePerson(Person p);

}