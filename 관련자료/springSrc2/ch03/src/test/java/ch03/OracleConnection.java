package ch03;
import java.sql.Connection;
import javax.inject.Inject;
import javax.sql.DataSource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/java/spring_db.xml" })
public class OracleConnection {
	@Inject
	private DataSource ds;
	@Test
	public void test() {
		try {
			Connection conn = ds.getConnection();
			if (conn != null)
				System.out.println("연결 성공 ㅋㅋ");
			conn.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}