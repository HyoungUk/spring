package list;
import java.util.List;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			ClassPathXmlApplicationContext("/list/list.xml");
		ListBean lb = ac.getBean(ListBean.class);
		List<String> list = lb.getList();
		for (String str : list) {
			System.out.println(str);
		}
		ac.close();
	}
}