package samp15;

import java.util.Collection;
import java.util.Scanner;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Ex01 {
	private static MemberService ms;
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		AbstractApplicationContext ac = 
			new GenericXmlApplicationContext("/samp15/beans15.xml");
		ms = ac.getBean(MemberService.class);
		while(true) {
			System.out.println("명령어를 입력하세요");
			String command = sc.nextLine();
			if (command.equals("x")) break;
			else if (command.startsWith("insert")) {
				insert(command.split(" "));
			}
			else if (command.startsWith("select")) {
				select(command.split(" "));
			}
			else if (command.startsWith("list")) {
				list();
			} 
			else if (command.startsWith("update")) {
				update(command.split(" "));
			}
			else if (command.startsWith("delete")) {
				delete(command.split(" "));
			}
			else help();
		}
		sc.close();
		ac.close();
	}
	private static void delete(String[] str) {
		if (str.length != 2) { 
			help();
			return;			
		}
		int result = ms.delete(str[1]);
		if (result > 0) {
			System.out.println("삭제 성공 ㅋㅋ");
		} else {
			System.out.println("삭제 실패");
		}
	}
	private static void update(String[] str) {
		if (str.length != 5) {
			help();
			return;
		}
		RegisterMember rm = new RegisterMember();
		rm.setEmail(str[1]);
		rm.setPass(str[2]);
		rm.setConfirmpass(str[3]);
		rm.setName(str[4]);
		if (rm.isPass()) {
			int result = ms.update(rm);
			if (result > 0) System.out.println("수정 성공 ㅋㅋ");
		} else {
			System.out.println("암호가 다릅니다");
		}
	}
	private static void list() {
		Collection<Member> list = ms.list();
		if (list==null || list.size()==0) {
			System.out.println("데이터가 없습니다");
		} else {
			for (Member member : list) {
				System.out.println(member);
			}
		}
	}
	private static void select(String[] str) {
		if (str.length != 2) { 
			help();
			return;			
		}
		Member member = ms.select(str[1]);
		if (member == null) System.out.println("없는 데이터 입니다.");
		else System.out.println(member);
	}
	private static void insert(String[] str) {
		if (str.length != 5) {
			help();
			return;
		}
		RegisterMember rm = new RegisterMember();
		rm.setEmail(str[1]);
		rm.setPass(str[2]);
		rm.setConfirmpass(str[3]);
		rm.setName(str[4]);
		if (rm.isPass()) {
			int result = ms.insert(rm);
			if (result > 0) System.out.println("입력 성공 ㅋㅋ");
		} else {
			System.out.println("암호가 다릅니다");
		}
	}
	private static void help() {
		System.out.println("명령어가 잘못되었습니다");
		System.out.println("insert email pass confirmpass name");
		System.out.println("update email pass confirmpass name");
		System.out.println("delete email");
		System.out.println("select email");
		System.out.println("list");
	}
}
