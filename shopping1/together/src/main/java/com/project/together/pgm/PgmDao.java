package com.project.together.pgm;

import java.util.List;

public interface PgmDao {
	int add(Pgm pgm);
	List<Pgm> list();
	Pgm check(String fileName);
	Pgm select(int num);
}
