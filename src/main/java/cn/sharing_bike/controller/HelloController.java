package cn.sharing_bike.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.sharing_bike.service.HelloService;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelloController {
	@Autowired
	private HelloService helloService;

	@RequestMapping("/index")
	public String hello() throws Exception{
		System.out.println(helloService.queryHello().getHello());
		return "forward:/index.jsp";
	}

	@RequestMapping(value = "/show_map",method = RequestMethod.GET)
	public String show_map() throws Exception{
		return "forward:/show_map.jsp";
	}

	@RequestMapping(value = "/bike_data",method = RequestMethod.GET)
	public String bike_data() throws Exception{
		return "forward:/bike_data.jsp";
	}
}
