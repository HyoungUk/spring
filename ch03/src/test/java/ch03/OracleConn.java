package ch03;
import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;
public class OracleConn {
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private static final String USER = "scott";
	private static final String PW = "tiger";
	@Test
	public void test() throws ClassNotFoundException {
		Class.forName(DRIVER);
		try{Connection conn=DriverManager.getConnection(URL,USER,PW); 
			if (conn != null) System.out.println("연결 성공");
			conn.close();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
}