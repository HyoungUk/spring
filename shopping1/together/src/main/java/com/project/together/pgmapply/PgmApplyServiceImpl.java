package com.project.together.pgmapply;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PgmApplyServiceImpl implements PgmApplyService{
	@Autowired
	private PgmApplyDao ad;

	public int apply(PgmApply appPgm) {
		return ad.apply(appPgm);
	}

}
