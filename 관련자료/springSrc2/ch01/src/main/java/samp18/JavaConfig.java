package samp18;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
@Configuration
public class JavaConfig {
	@Bean
	public MemberDao memberDao() {
		return new MemberDaoImpl();
	}
	@Bean
	public MemberService memberService() {
		return new MemberServiceImpl();
	}
}