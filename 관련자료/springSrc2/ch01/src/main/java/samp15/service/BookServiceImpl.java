package samp15.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import samp15.dao.BookDao;
import samp15.model.Book;
@Service
public class BookServiceImpl implements BookService{
	@Autowired
	private BookDao bd;
	public Book getBook() {
		return bd.getBook("홍길동전");
	}
}