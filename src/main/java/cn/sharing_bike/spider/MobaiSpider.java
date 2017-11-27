package cn.sharing_bike.spider;

import java.io.BufferedReader;
import java.io.InputStreamReader;

/**
 * 摩拜单车数据的爬取
 * @author JustCute
 *
 */
public class MobaiSpider {
	/**
	 * 
	 * @param spiderFilePath	爬虫脚本的绝对路径
	 * @return	返回json格式的字符串（String)
	 * @throws Exception
	 */
	public static String spiderData(String spiderFilePath) throws Exception{
		String data="";
		String[] command={"python",spiderFilePath};
		Process pr=Runtime.getRuntime().exec(command);
		
		BufferedReader br=null;
		try{
			br=new BufferedReader(new InputStreamReader(pr.getInputStream()));
			String line="";
			while((line=br.readLine())!=null){
				data=data+line;
			}
			br.close();
			pr.waitFor();
			return data;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
}
