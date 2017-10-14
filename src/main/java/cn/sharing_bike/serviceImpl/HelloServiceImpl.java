package cn.sharing_bike.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import cn.sharing_bike.bean.Hello;
import cn.sharing_bike.mapper.HelloMapper;
import cn.sharing_bike.service.HelloService;

public class HelloServiceImpl implements HelloService{
	@Autowired
	private HelloMapper helloMapper;
	@Override
	public Hello queryHello() throws Exception {
		// TODO Auto-generated method stub
		return helloMapper.queryHello();
	}

}
