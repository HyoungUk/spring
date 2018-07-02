package samp12;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
//import org.springframework.context.support.GenericXmlApplicationContext;

public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac =
			new ClassPathXmlApplicationContext("/samp12/bean12.xml");
//			new GenericXmlApplicationContext("/samp12/bean12.xml");
		BookService bs = ac.getBean(BookService.class);
		Book book = bs.getBook();
		System.out.println(book);
		ac.close();
		
	}
}
