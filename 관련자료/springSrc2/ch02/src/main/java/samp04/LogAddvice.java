package samp04;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.util.StopWatch;
@Aspect
public class LogAddvice {
	@Around("execution(* sayHello())")
	public Object around(ProceedingJoinPoint pjp) throws Throwable {
		String methodName = pjp.getSignature().getName();
		System.out.println("작업시작 : "+methodName);
		StopWatch sw = new StopWatch();
		sw.start(methodName);
		Object obj = pjp.proceed();
		sw.stop();
		System.out.println("작업종료 : "+sw.getTotalTimeSeconds()+"초");
		return obj;
	}
}