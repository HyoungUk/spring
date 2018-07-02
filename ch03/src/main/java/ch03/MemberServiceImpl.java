package ch03;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao md;
	public int insert(Member member) {
		int result = 0;
		Member mem = md.select(member.getId());
		if (mem==null) result = md.insert(member);
		else System.out.println("이미 있는 ID입니다");
		return result;
	}
	public Member select(String id) {
		return md.select(id);
	}
	public List<Member> list() {
		return md.list();
	}
	public int update(Member member) {
		int result = 0;
		Member mem = md.select(member.getId());
		if (mem!=null) result = md.update(member);
		else System.out.println("없는 데이터여서 수정 안돼 !!");
		return result;
	}
	public int delete(String id) {
		int result = 0;
		Member mem = md.select(id);
		if (mem!=null) result = md.delete(id);
		else System.out.println("없는 데이터여서 삭제 안돼 !!");
		return result;
	}
}



