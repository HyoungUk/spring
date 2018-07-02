package member;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao md;
	public int insert(Member member) {
		int result = 0;
		Member member2 = md.select(member.getId());
		if (member2 == null) {
			result = md.insert(member); 
		} else System.out.println("이미 있는 데이터 입니다");
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
		Member member2 = md.select(member.getId());
		if (member2 != null) {
			result = md.update(member); 
		} else System.out.println("없는데 우찌 수정해유");
		return result;
	}
	public int delete(String id) {
		int result = 0;
		Member member2 = md.select(id);
		if (member2 != null) {
			result = md.delete(id); 
		} else System.out.println("데이터가 없어서 삭제할 수 없습니다");
		return result;
	}
}