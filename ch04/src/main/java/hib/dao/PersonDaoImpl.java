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
	public int addPerson(Person p) {
		int result = 0;
		try {	ht.save(p);
			result = 1;			
		} catch(Exception e) {
			System.out.println("입력실패 : "+e.getMessage());
		}
		return result;
	}
	public Person getPerson(String id) {
		return ht.get(Person.class, id);
	}
	public List<Person> findPerson() {
		return (List<Person>) ht.find("from Person");
	}
	public void updatePerson(Person person) {
		try{ht.update(person);
			System.out.println("수정성공");
		}catch(Exception e) {
			System.out.println("수정실패:"+e.getMessage());
		}		
	}
	public void deletePerson(Person person) {
		try{ht.delete(person);
			System.out.println("삭제성공");
		}catch(Exception e) {
			System.out.println("삭제실패:"+e.getMessage());
		}	
	}	
}



