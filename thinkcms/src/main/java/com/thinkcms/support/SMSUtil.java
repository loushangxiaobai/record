package com.thinkcms.support;

import java.io.IOException;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

public class SMSUtil {
	
	public static String sendMessage(String phone,String context ) throws HttpException, IOException{
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod("http://gbk.sms.webchinese.cn");
		// PostMethod post = new PostMethod("http://sms.webchinese.cn/web_api/");
		post.addRequestHeader("Content-Type",
				"application/x-www-form-urlencoded;charset=gbk");// 在头文件中设置转码
		NameValuePair[] data = { new NameValuePair("Uid", "楼上小白"),// 注册的用户名
				new NameValuePair("Key", "19f7a515311ef3ec1b42"),// 注册成功后，登录网站后得到的密钥
				new NameValuePair("smsMob", phone),// 手机号码
				new NameValuePair("smsText", context) };// 短信内容
		post.setRequestBody(data);

		client.executeMethod(post);
		/*Header[] headers = post.getResponseHeaders();
		int statusCode = post.getStatusCode();
		System.out.println("statusCode:" + statusCode);
		for (Header h : headers) {
			System.out.println("---" + h.toString());
		}*/
		String result = new String(post.getResponseBodyAsString().getBytes(
				"gbk"));
		System.out.println(result);
		return result;

	}
		
}
