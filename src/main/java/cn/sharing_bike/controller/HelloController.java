package cn.sharing_bike.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.sharing_bike.service.HelloService;

@Controller
public class HelloController {
	@Autowired
	private HelloService helloService;
	@RequestMapping("/index")
	public String hello() throws Exception{
		System.out.println(helloService.queryHello().getHello());
		return "forward:/index.jsp";
	}
}
