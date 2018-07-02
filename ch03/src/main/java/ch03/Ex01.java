package ch03;
import java.util.List;
import java.util.Scanner;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
public class Ex01 {
	private static MemberService ms;
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		AbstractApplicationContext ac = new 
			GenericXmlApplicationContext("spring-db.xml");
		ms = ac.getBean(MemberService.class);
		while(true) {
			System.out.println("명령어를 입력하세요");
			String command = sc.nextLine();
			if (command.equals("x")) break;
			else if (command.startsWith("insert"))
				insert(command.split(" "));
			else if (command.startsWith("select"))
				select(command.split(" "));
			else if (command.equals("list"))
				list();
			else if (command.startsWith("update"))
				update(command.split(" "));
			else if (command.startsWith("delete"))
				delete(command.split(" "));
			else help();
		}
		System.out.println("작업 종료");
		sc.close();		ac.close();
	}
	private static void delete(String[] str) {
		if (str.length != 2) {	help();	return;		}
		int result = ms.delete(str[1]);
		if(result > 0) System.out.println("삭제 성공 ㅋㅋ");
	}
	private static void update(String[] str) {
		if (str.length != 5) {	help();	return;		}
		Member member = new Member();
		member.setId(str[1]); member.setEmail(str[2]);
		member.setPassword(str[3]); member.setName(str[4]);
		int result = ms.update(member);
		if(result > 0) System.out.println("수정 성공 ㅋㅋ");
	}
	private static void list() {
		List<Member> list = ms.list();
		if (list == null || list.size()==0)
			System.out.println("데이터가 없네");
		else {
			for (Member member : list) {
				System.out.println(member);
			}
		}
	}
	private static void select(String[] str) {
		if (str.length != 2) {	help();	return;		}
		Member member = ms.select(str[1]);
		if (member==null) System.out.println("없는데 ..");
		else System.out.println(member);
	}
	private static void insert(String[] str) {
		if (str.length != 5) {	help();	return;		}
		Member member = new Member();
		member.setId(str[1]); member.setEmail(str[2]);
		member.setPassword(str[3]); member.setName(str[4]);
		int result = ms.insert(member);
		if(result > 0) System.out.println("입력 성공 ㅋㅋ");
	}
	private static void help() {
		System.out.println("잘못된 명령어 입니다");
		System.out.println("insert id email password name");
		System.out.println("update id email password name");
		System.out.println("delete id");
		System.out.println("select id");
		System.out.println();
	}
}


