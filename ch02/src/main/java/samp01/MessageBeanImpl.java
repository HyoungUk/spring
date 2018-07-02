package samp01;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
public class MessageBeanImpl implements MessageBean,
		BeanNameAware, BeanFactoryAware,
		InitializingBean, DisposableBean{
	private String greet;
	public MessageBeanImpl() {
		System.out.println("① Bean의 생성자 실행");
	}
	public void setGreet(String greet) {
		System.out.println("② 세터 메서드 실행");
		this.greet = greet;
	}
	public void setBeanName(String name) {
		System.out.println("③ Bean명 지정");
		System.out.println(" -> " + name);		
	}
	public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
		System.out.println("④ BeanFactory 지정");
		System.out.println(" -> " +beanFactory.getClass());
	}
	public void afterPropertiesSet() throws Exception {
		System.out.println("⑥ 프로퍼티 지정 완료");
	}
	public void init() {
		System.out.println("⑦ 초기화 메서드 실행");
	}
	public void sayHello(String name) {
		System.out.println(name+"님 "+greet);		
	}
	public void destroy() throws Exception {
		System.out.println("종료");
	}	
}