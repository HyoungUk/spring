package com.project.together.pgm;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PgmDaoImpl implements PgmDao{
	@Autowired
	private SqlSessionTemplate sst;

	public int add(Pgm pgm) {
		return sst.insert("pgmns.add", pgm);
	}
	
	public List<Pgm> list() {
		return sst.selectList("pgmns.list");
	}

	public Pgm check(String fileName) {
		return sst.selectOne("pgmns.check", fileName);
	}

	public Pgm select(int num) {
		return sst.selectOne("pgmns.select", num);
	}
}
