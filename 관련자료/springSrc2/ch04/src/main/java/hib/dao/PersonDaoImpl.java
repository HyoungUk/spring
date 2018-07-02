package hib.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import hib.model.Person;
@Repository
public class PersonDaoImpl implements PersonDao {
	@Autowired
	private HibernateTemplate ht;
	public void addPerson(Person p) {
		try {	ht.save(p);
			System.out.println("입력 성공");			
		} catch(Exception e) {
			System.out.println("입력실패 : "+e.getMessage());
		}
	}
	public Person getPerson(String id) {
		Person person = null;
		try {person = ht.get(Person.class, id);
		} catch(Exception e) {
			System.out.println("데이터가 없습니다 : "+e.getMessage());
		}
		return person;
	}
	public List<Person> list() {
		// from 뒤에 클래스 명
		return (List<Person>) ht.find("from Person");
	}
	public void updatePerson(Person p) {
		ht.update(p);
		System.out.println("수정 성공");
	}
	public void removePerson(Person p) {
		ht.delete(p);
		System.out.println("삭제성공");
	}	
}