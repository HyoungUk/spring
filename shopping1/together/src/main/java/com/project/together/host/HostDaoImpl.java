package com.project.together.host;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HostDaoImpl implements HostDao{
	@Autowired
	private SqlSessionTemplate sst;

	public int apply(Host host) {
		return sst.insert("hostns.apply", host);
	}
	public Host search(int mb_num) {
		return sst.selectOne("hostns.search", mb_num);
	}
	public Host select(int host_num) {
		return sst.selectOne("hostns.select", host_num);
	}
}
