package samp15;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao md;

	public int insert(RegisterMember rm) {
		int result = 0;
		Member member = md.select(rm.getEmail());
		if (member != null) System.out.println("이미 있는데!");
		else {
			md.insert(rm);
			result = 1;
		}
		return result;
	}

	public Member select(String email) {
		return md.select(email);
	}
	
	public Collection<Member> list() {
		return md.list();
	}

	public int update(RegisterMember rm) {
		int result = 0;
		Member member = md.select(rm.getEmail());
		if (member == null) System.out.println("없는데 우찌 수정하냐");
		else {
			md.update(rm);
			result = 1;
		}
		return result;
	}

	public int delete(String email) {
		int result = 0;
		Member member =  md.select(email);
		if (member == null) System.out.println("없어서 삭제 안돼!!");
		else {
			md.delete(email);
			result = 1;
		}
		return result;
	}
	
}
