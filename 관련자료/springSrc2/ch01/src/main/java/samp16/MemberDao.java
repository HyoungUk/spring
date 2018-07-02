package samp16;
import java.util.Collection;
public interface MemberDao {
	Member select(String email);
	int insert(RegisterMember rm);
	Collection<Member> list();
	void update(RegisterMember rm);
	void delete(String email);

}