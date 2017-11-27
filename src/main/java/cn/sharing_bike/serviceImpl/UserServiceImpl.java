package cn.sharing_bike.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import cn.sharing_bike.mapper.UserMapper;
import cn.sharing_bike.service.UserService;
/**
 * 用户相关业务
 * @author cf
 *
 */
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	/**
	 * 根据用户名判断该用户是否存在
	 */
	@Override
	public boolean isExist(String uname) {
		if(userMapper.queryUserByName(uname)==null){
			//用户不存在
			return false;
		}else{
			//用户存在
			return true;
		}
	}
	/**
	 * 根据用户获取用户密码
	 */
	@Override
	public String queryPasswdByName(String uname) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByName(uname).getPassword();
	}

}
