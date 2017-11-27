package cn.sharing_bike.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * 页面跳转控制器
 * @author JustCute
 *
 */
@Controller
public class PageJumpController {

	@RequestMapping(value = "/show_map",method = RequestMethod.GET)
	public String show_map() throws Exception{
		return "forward:/show_map.jsp";
	}

	@RequestMapping(value = "/bike_data",method = RequestMethod.GET)
	public String bike_data() throws Exception{
		return "forward:/bike_data.jsp";
	}
}
