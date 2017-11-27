package cn.sharing_bike.utils;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
/**
 * MD5加密工具类
 * @author cf
 *
 */
public class Md5Encrypt {
	private static final String hashAlgorithmName="MD5";
	
	public static String encrypt(int hashIterations,String encryString,String saltName){
		
		String result=new SimpleHash(hashAlgorithmName, encryString, ByteSource.Util.bytes(saltName), hashIterations).toString();
		return result;
	}
	
	public static void main(String[] args) {
		System.out.println(Md5Encrypt.encrypt(1024, "1234", "zs"));
	}
}
