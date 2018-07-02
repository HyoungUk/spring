package samp15;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import samp15.model.Book;
import samp15.service.BookService;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new
			GenericXmlApplicationContext("/samp15/beans15.xml");
		BookService bs = ac.getBean(BookService.class);
		Book book = bs.getBook();
		System.out.println(book);
		ac.close();
	}
}