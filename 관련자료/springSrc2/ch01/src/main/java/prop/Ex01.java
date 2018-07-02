package prop;
import java.util.Properties;
import java.util.Set;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
public class Ex01 {
	public static void main(String[] args) {
		AbstractApplicationContext ac = new
			GenericXmlApplicationContext("/prop/proper.xml");
		ProperBean pb = ac.getBean(ProperBean.class);
		Properties pp = pb.getPpt();
		Set<Object> set = pp.keySet();
		for (Object k : set) {
			String key = (String)k;
			System.out.println(key+" = "+pp.getProperty(key));
		}
		ac.close();
	}
}