package com.thinkcms.support;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * MD5加密
 * @author liudebing
 *
 */
public class MD5Util {
	
	/**
	 * 加密
	 * @param md5Str 需要加密得字符串
	 * @return MD5加密后的字符串 加密失败返回Null
	 */
	public static String getMD5(String md5Str) {
		try {
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			byte[] bytes = md5.digest(md5Str.getBytes());
			StringBuffer sb = new StringBuffer();
			String temp = "";
			for (byte b : bytes) {
				temp = Integer.toHexString(b & 0XFF);
				sb.append(temp.length() == 1 ? "0" + temp : temp);
			}
			return sb.toString();
		} catch (NoSuchAlgorithmException e) {
			return null;
		}
	}

	public static void main(String[] args) {
		System.out.println(MD5Util.getMD5("5201314.."));//fb60bcaf22d4f61f2efbffd8af047b76
	}
	
	
	// 进行MD5加密
		public static String encryptMD5(String info) {
			byte[] bt = null;
			try {
				if (info == null) {
					return null;
				}
				MessageDigest alga = MessageDigest.getInstance("MD5");
				alga.update(info.getBytes());
				bt = alga.digest();
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
			// 将摘要转为字符串
			String newInfo = byte2hex(bt);
			return newInfo;

		}
		
		/**
		 *  将二进制转化为16进制字符串
		 * @param b
		 * @return
		 */
		private static String byte2hex(byte[] b) {
			String hs = "";
			String stmp = "";
			for (int n = 0; n < b.length; n++) {
				stmp = (java.lang.Integer.toHexString(b[n] & 0XFF));
				if (stmp.length() == 1) {
					hs = hs + "0" + stmp;
				} else {
					hs = hs + stmp;
				}
			}
			return hs.toUpperCase();
		}
}
