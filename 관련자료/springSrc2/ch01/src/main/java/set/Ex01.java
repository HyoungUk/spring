package set;
import java.util.Set;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new 
			ClassPathXmlApplicationContext("/set/set.xml");
		SetBean lb = ac.getBean(SetBean.class);
		Set<String> list = lb.getSet();
		for (String str : list) {
			System.out.println(str);
		}
		ac.close();
	}
}