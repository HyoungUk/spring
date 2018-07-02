package samp03;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.util.StopWatch;
public class LogAdvice {
	public Object logAround(ProceedingJoinPoint pjp) throws Throwable {
		// String methodName = pjp.getKind();
		String methodName = pjp.getSignature().getName();
		StopWatch sw = new StopWatch();
		System.out.println(methodName+"작업 시작");
		sw.start(methodName);
		Object obj = pjp.proceed();
		sw.stop();
		System.out.println("작업종료 시간 : "+
				sw.getTotalTimeSeconds()+"초");
		return obj;		
	}
}