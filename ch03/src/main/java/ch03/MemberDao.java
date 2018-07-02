package ch03;

import java.util.List;

public interface MemberDao {
	int insert(Member member);
	Member select(String id);
	List<Member> list();
	int update(Member member);
	int delete(String id);

}
