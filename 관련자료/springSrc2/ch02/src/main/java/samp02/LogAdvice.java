package samp02;
import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.springframework.util.StopWatch;
public class LogAdvice implements MethodInterceptor {

	public Object invoke(MethodInvocation mi) throws Throwable {
		String method = mi.getMethod().getName();
		StopWatch sw = new StopWatch();
		System.out.println("작업 시작 : " + method);
		sw.start(method);
		Object obj = mi.proceed();
		sw.stop();
		System.out.println("작업종료 : "+sw.getTotalTimeSeconds()+"초");
		return obj;
	}
}