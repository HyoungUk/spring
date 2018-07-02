package com.project.together.pgm;

import java.util.List;

public interface PgmService {
	int add(Pgm pgm);
	List<Pgm> getList();
	Pgm check(String fileName);
	Pgm select(int num);
}
