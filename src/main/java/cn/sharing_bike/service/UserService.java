package cn.sharing_bike.service;

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

}
