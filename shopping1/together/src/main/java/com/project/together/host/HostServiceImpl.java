package com.project.together.host;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HostServiceImpl implements HostService{
	@Autowired
	private HostDao hd;

	public int apply(Host host) {
		return hd.apply(host);
	}
	public Host search(int mb_num) {
		return hd.search(mb_num);
	}
	public Host select(int host_num) {
		return hd.select(host_num);
	}
}
