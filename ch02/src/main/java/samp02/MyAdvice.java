package samp02;
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
		System.out.println("around시작");
		Object obj = pjp.proceed();
		System.out.println("around종료");
		return obj;
	}
	@After("execution(* getProduct())")
	public void after() {
		System.out.println("after");
	}
	@AfterThrowing(value="execution(* getProduct())",throwing="e")
	public void afterTh(Throwable e) {
		System.out.println("에러 : " +e);
	}
	@AfterReturning(value="execution(* getProduct())",returning="p")
	public void afterRe(Product p) {
		System.out.println("after return에서 출력 : "+p);
	}
}



