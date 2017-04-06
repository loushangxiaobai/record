package com.thinkcms.support;

import java.io.IOException;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumQueryRequest;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumQueryResponse;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class SMSUtil {
	
	public static String sendMessage(String phone,String context ) throws HttpException, IOException{
		/*HttpClient client = new HttpClient();
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
		String result = new String(post.getResponseBodyAsString().getBytes(
				"gbk"));
		System.out.println(result);*/
		  //官网的URL
	   String url="http://gw.api.taobao.com/router/rest";
		//成为开发者，创建应用后系统自动生成
	   String appkey="23300902";
	   String secret="24c5befb62bed7917bf139b7d39d251d";
		
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend("123456");
		req.setSmsType("normal");
		req.setSmsFreeSignName("阿里大于");
		req.setSmsParamString("{\"code\":\"1234\",\"product\":\"alidayu\"}");
		req.setRecNum("17688867993");
		req.setSmsTemplateCode("SMS_585014");
		AlibabaAliqinFcSmsNumSendResponse rsp;
		try {
			rsp = client.execute(req);
			System.out.println(rsp.getBody());
		} catch (ApiException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;

	}
	
	public static void main(String[] args) {
		
		  //官网的URL
		   String url="http://gw.api.taobao.com/router/rest";
			//成为开发者，创建应用后系统自动生成
		   String appkey="23300902";
		   String secret="24c5befb62bed7917bf139b7d39d251d";
			
			TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
			AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
			req.setExtend("123456");
			req.setSmsType("normal");
			req.setSmsFreeSignName("阿里大于");
			req.setSmsParamString("{\"code\":\"1234\",\"product\":\"alidayu\"}");
			req.setRecNum("17688867993");
			req.setSmsTemplateCode("SMS_585014");
			AlibabaAliqinFcSmsNumSendResponse rsp;
			try {
				rsp = client.execute(req);
				System.out.println(rsp.getBody());
			} catch (ApiException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
		
}
