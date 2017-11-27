package cn.sharing_bike.service;

import cn.sharing_bike.bean.User;

public interface UserService {
	/**
	 * 根据用户名判断该用户是否存在
	 * @param uname
	 * @return
	 */
	boolean isExist(String uname);
	/**
	 * 根据用户获取用户密码
	 * @param uname
	 * @return
	 */
	String queryPasswdByName(String uname);
	/**
	 * 注册用户
	 * @param user
	 * @throws Exception
	 */
	void registUser(User user) throws Exception;
}
