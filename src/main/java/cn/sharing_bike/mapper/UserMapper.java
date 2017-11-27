package cn.sharing_bike.mapper;

import cn.sharing_bike.bean.User;

public interface UserMapper {
	/**
	 * 根据用户名查询用户详细信息
	 * @param uname 用户名
	 * @return
	 */
	User queryUserByName(String uname);
	/*
	 * 注册
	 */
	void registUser(User user);
	
}
