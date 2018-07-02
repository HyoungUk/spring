package member;
import java.util.List;
public interface MemberService {
	int insert(Member member);
	Member select(String string);
	List<Member> list();
	int update(Member member);
	int delete(String string);

}