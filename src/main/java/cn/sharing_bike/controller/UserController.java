package cn.sharing_bike.controller;


import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.sharing_bike.bean.User;
import cn.sharing_bike.service.UserService;
import cn.sharing_bike.utils.Md5Encrypt;
/**
 * 用户控制器
 * @author cf
 *
 */
@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;
	/**
	 * 处理登陆请求
	 * @param username 用户名
	 * @param password 密码
	 * @return
	 * @throws Exception
	 */
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
	/**
	 * 注册用户
	 * @param user 用户实例
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="regist",method=RequestMethod.POST)
	public String regist(User user,HttpServletRequest request) throws Exception{
		//获取用户输入的密码进行md5加密
		String password=user.getPassword();
		String encryptPasswd=Md5Encrypt.encrypt(1024, password, user.getUsername());
		user.setPassword(encryptPasswd);
		//注册用户
		userService.registUser(user);
		//注册成功
		return "redirect:/login.jsp?mark=1";
	}
	
	/**
	 * 登出
	 * @return
	 */
	@RequestMapping("logout")
	public String logout(){
		Subject subject=SecurityUtils.getSubject();
		subject.logout();
		return "redirect:/login.jsp";
	}
}
