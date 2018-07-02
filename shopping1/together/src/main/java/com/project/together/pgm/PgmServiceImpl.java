package com.project.together.pgm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PgmServiceImpl implements PgmService {
	@Autowired
	private PgmDao pd;

	public int add(Pgm pgm) {
		return pd.add(pgm);
	}

	public List<Pgm> getList() {
		return pd.list();
	}

	public Pgm check(String fileName) {
		return pd.check(fileName);
	}

	public Pgm select(int num) {
		return pd.select(num);
	}
}
