package com.project.together.pgmapply;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PgmApplyDaoImpl implements PgmApplyDao{
	@Autowired
	private SqlSessionTemplate sst;

	public int apply(PgmApply appPgm) {
		return sst.insert("PgmApplyns.apply", appPgm);
	}

}
