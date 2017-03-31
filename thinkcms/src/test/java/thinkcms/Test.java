package thinkcms;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

public class Test {

	/**
	 * @author xiaobai
	 * @date 2017年3月31日09:40:16
	 * @param args
	 * @throws IOException
	 * @throws HttpException
	 * @description
	 */
	public static void main(String[] args) throws HttpException, IOException {
		HttpServletRequest request = null;
		String basepath= request.getSession().getServletContext().getRealPath("/")+ "upload/";
     System.out.println(basepath);
	}

}
