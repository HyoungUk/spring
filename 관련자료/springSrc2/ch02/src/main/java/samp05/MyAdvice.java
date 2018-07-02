package samp05;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
public class MyAdvice {
	public void before(JoinPoint jp) {
		String name = jp.getSignature().getName();
		System.out.println("before : "+name);
	}
	public Object around(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("around 작업시작");
		Object obj = pjp.proceed();
		System.out.println("around 작업종료");
		return obj;
	}
	public void after() {
		System.out.println("after ");
	}
	public void aftert(Product product) {
		System.out.println("after return : "+product);
	}
	public void afterth(Throwable err) {
		System.out.println("after throwable : "+err);
	}
}