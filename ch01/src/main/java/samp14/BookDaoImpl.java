package samp14;

import org.springframework.stereotype.Repository;

@Repository
public class BookDaoImpl implements BookDao {
	
	public Book getBook(String title) {
		return new Book(title, 20000);
	}

}
