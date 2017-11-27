package cn.sharing_bike.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import cn.sharing_bike.service.UserService;

public class LoginRealm extends AuthorizingRealm{
	@Autowired
	private UserService userService;
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		// TODO Auto-generated method stub
		
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken arg0) throws AuthenticationException {
		//将AuthenticationToken强转
		UsernamePasswordToken upToken=(UsernamePasswordToken) arg0;
		//获取用户登录信息
		String uname=upToken.getUsername();
		//检测用户是否存在
		boolean isExist=userService.isExist(uname);
		
		if(!isExist)
			throw new UnknownAccountException("用户名不存在");
		//进行用户密码验证
		SimpleAuthenticationInfo info =new SimpleAuthenticationInfo(uname, userService.queryPasswdByName(uname), ByteSource.Util.bytes(uname), getName());
		
		
		return info;
	}

}
