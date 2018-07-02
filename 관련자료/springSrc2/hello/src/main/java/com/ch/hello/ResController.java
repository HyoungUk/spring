package com.ch.hello;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
public class ResController {
	@RequestMapping("/member")
	public Member member() {
		Member member = new Member();
		member.setId("k1");
		member.setName("길동");
		member.setEmail("k1@k.com");
		return member;
	}
	@RequestMapping("/memberList")
	public List<Member> memberList() {
		List<Member> list = new ArrayList<Member>();
		for (int i = 0; i < 10; i++) {
			Member member = new Member();
			member.setId("k"+i);
			member.setName("홍길동-"+i);
			member.setEmail("k"+i+"k.com");
			list.add(member);
		}
		return list;
	}
}