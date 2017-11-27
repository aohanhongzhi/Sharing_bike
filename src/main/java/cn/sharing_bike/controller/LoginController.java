package cn.sharing_bike.controller;


import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 登陆控制器
 * @author cf
 *
 */
@Controller
public class LoginController {
	@RequestMapping("/login")
	public String login(String username,String password) throws Exception{
		
		//获取当前用户
		Subject subject=SecurityUtils.getSubject();
		//检测是否登录
		if(!subject.isAuthenticated()){
			UsernamePasswordToken upToken=new UsernamePasswordToken(username, password);
			//记住我
			upToken.setRememberMe(true);
			//登录
			try{
				subject.login(upToken);
			}catch(Exception e){
				System.out.println("登录失败"+"------>"+e.getMessage());
			}
		}
		
		
		return "redirect:/index";
		
	}
	@RequestMapping("/index")
	public String index()throws Exception{
		return "/index";
	}
}
