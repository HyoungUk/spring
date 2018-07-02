package hib;
import java.util.List;
import java.util.Scanner;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import hib.model.Person;
import hib.service.PersonService;
public class Ex01 {  
	private static PersonService ps;
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			GenericXmlApplicationContext("classpath:hibernate.xml");
		ps = ac.getBean(PersonService.class);
		Scanner sc = new Scanner(System.in);
		while(true) {
			System.out.println("명령어를 입력하세요");
			String command = sc.nextLine();
			if (command.equals("x")) break;
			else if (command.startsWith("add")) {
				addPerson(command.split(" "));
			} else if (command.startsWith("get")) {
				getPerson(command.split(" "));
			} else if (command.equals("list")) {
				list();
			} else if (command.startsWith("update")) {
				updatePerson(command.split(" "));
			} else if (command.startsWith("remove")) {
				removePerson(command.split(" "));
			} else help();
		}
		System.out.println("작업종료");
		ac.close(); sc.close();
	}
	private static void removePerson(String[] str) {
		if (str.length != 2) { help(); return; }
		Person p = new Person();
		p.setId(str[1]);
		ps.removePerson(p);
	}
	private static void updatePerson(String[] str) {
		if (str.length != 3) { help(); return; }
		Person p = new Person();
		p.setId(str[1]);  p.setName(str[2]);
		ps.updatePerson(p);
	}
	private static void list() {
		List<Person> list = ps.list();
		if (list==null || list.size()==0) 
			System.out.println("데이터가 없습니다");
		else {
			for (Person person : list) {
				System.out.println("id:"+person.getId()+", 이름:"+person.getName());
			}
		}
	}
	private static void getPerson(String[] str) {
		if (str.length != 2) { help(); return; }
		Person person = ps.getPerson(str[1]);
		if (person == null) System.out.println("데이터 없네");
		else {
			System.out.println("id:"+person.getId()+", 이름:"+person.getName());
		}
	}
	private static void help() {
		System.out.println("명령어가 잘못됐습니다");
		System.out.println("add id name");
		System.out.println("update id name");
		System.out.println("remove id");
		System.out.println("get id");
		System.out.println("list");
		System.out.println();
	}
	private static void addPerson(String[] str) {
		if (str.length != 3) { help(); return; }
		Person person = new Person();
		person.setId(str[1]); person.setName(str[2]);
		ps.addPerson(person);	
	}
}