package samp18;
import java.util.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao md;
	public int insert(RegisterMember rm) {
		int result = 0;
		Member member = md.select(rm.getEmail());	
		if (member != null) System.out.println("이미 있는데 !!");
		else result = md.insert(rm);		
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
		if (member != null)  {
			md.update(rm);	
			result = 1;			
		} else System.out.println("없는 데이터 우찌 수정해 !!");
		return result;
	}
	public int delete(String email) {
		int result = 0;
		Member member = md.select(email);	
		if (member != null)  {
			md.delete(email);	
			result = 1;			
		} else System.out.println("없어서 삭제 못해 우짤래 !!");
		return result;
	}	
}