package samp17;
import java.util.*;
import org.springframework.stereotype.Repository;
@Repository
public class MemberDaoImpl implements MemberDao {
	private static int nextId;
	private Map<String, Member> map=new HashMap<String, Member>();
	public Member select(String email) {
		return map.get(email);
	}
	public int insert(RegisterMember rm) {
		Member member = new Member(rm.getEmail(),
				rm.getPass(), rm.getName(), new Date());
		member.setId(++nextId);
		map.put(rm.getEmail(), member);
		return 1;
	}
	public Collection<Member> list() {
		return  map.values();
	}
	public void update(RegisterMember rm) {
		Member member = select(rm.getEmail());
		member.setPass(rm.getPass());
		member.setName(rm.getName());
		map.put(rm.getEmail(), member);		
	}
	public void delete(String email) {
		map.remove(email);		
	}
}