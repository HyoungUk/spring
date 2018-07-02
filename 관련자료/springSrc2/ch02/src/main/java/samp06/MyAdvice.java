package samp06;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;
@Aspect
@Component
public class MyAdvice {
	@Before("execution(* getProduct())")
	public void before(JoinPoint jp) {
		String name = jp.getSignature().getName();
		System.out.println("before : "+name);
	}
	@Around("execution(* getProduct())")
	public Object around(ProceedingJoinPoint pjp) throws Throwable {
		System.out.println("around 작업시작");
		Object obj = pjp.proceed();
		System.out.println("around 작업종료");
		return obj;
	}
	@After("execution(* getProduct())")
	public void after() {
		System.out.println("after ");
	}
	@AfterReturning(value="execution(* getProduct())",returning="product")
	public void aftert(Product product) {
		System.out.println("after return : "+product);
	}
	@AfterThrowing(value="execution(* getProduct())",throwing="err")
	public void afterth(Throwable err) {
		System.out.println("after throwable : "+err);
	}
}