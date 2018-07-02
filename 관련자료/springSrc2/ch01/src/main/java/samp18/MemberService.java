package samp18;
import java.util.Collection;
public interface MemberService {
	int insert(RegisterMember rm);
	Member select(String string);
	Collection<Member> list();
	int update(RegisterMember rm);
	int delete(String email);

}