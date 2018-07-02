package com.project.together.host;

public interface HostDao {
	int apply(Host host);
	Host search(int mb_num);
	Host select(int host_num);
}
