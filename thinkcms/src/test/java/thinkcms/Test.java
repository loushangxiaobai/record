package thinkcms;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;


public class Test {
	public static void main(String[] args) throws HttpException,IOException{
	
		HttpClient clinet = new HttpClient();
		PostMethod post= new PostMethod("http://utf8.sms.webchinese.cn");
		post.addRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
		NameValuePair[] data={
				new NameValuePair("key","19f7a515311ef3ec1b42"),
				new NameValuePair("smsMob", "17688867993"),
				new NameValuePair("smsText", "备案系统短信测试")
				
		};
		post.setRequestBody(data);
		clinet.executeMethod(post);
		Header[] headers=post.getResponseHeaders();
		int statusCode =post.getStatusCode();
		System.out.println("statusCosde:" +statusCode);
		
		for(Header h : headers){
			System.out.println("----- "+h.toString());
			
		}
		
		String result = new String(post.getResponseBodyAsString().getBytes("utf-8"));
	
		System.out.println(result);
	}

}
