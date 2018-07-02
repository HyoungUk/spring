package samp16;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Repository;
@Repository
public class MemberDaoImpl implements MemberDao {
	private static int nextId;
	private Map<String, Member> map=new HashMap<String, Member>();
	public Member select(String email) {
		return map.get(email);
	}
	public void insert(RegisterMember rm) {
		Member member = new Member();
		member.setEmail(rm.getEmail());
		member.setName(rm.getName());
		member.setPass(rm.getPass());
		member.setId(++nextId);
		member.setReg_date(new Date());
		map.put(member.getEmail(), member);
	}
	public Collection<Member> list() {
		return map.values();
	}
	public void update(RegisterMember rm) {
		Member member = select(rm.getEmail());
		member.setName(rm.getName());
		member.setPass(rm.getPass());
		map.put(member.getEmail(), member);
	}
	public void delete(String email) {
		map.remove(email);		
	}	
	
	
	
}