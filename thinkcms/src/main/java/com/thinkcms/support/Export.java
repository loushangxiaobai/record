package com.thinkcms.support;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;



public class Export {
	public static void doExportByObj(HttpServletRequest req,HttpServletResponse response,List list,String fileName,String[] head,String[] field){
		HSSFWorkbook book = new HSSFWorkbook();
		HSSFSheet sheet = book.createSheet(fileName);
		HSSFRow row = sheet.createRow(0);
		for (int i = 0; i < head.length; i++) {
			HSSFCell cell = row.createCell((short)i);
			cell.setCellValue(head[i]);
		}
		for (int i = 0; i < list.size(); i++) {
			HSSFRow tempRow = sheet.createRow(i+1);
			Object obj = list.get(i);
			Class type = obj.getClass();
			for (int j = 0; j < field.length; j++) {
					String temp = field[j];
					String methodName = "get"+temp.replaceFirst(temp.substring(0,1), temp.substring(0,1).toUpperCase());
					String value = "";
						try {
							try {
								
								System.out.println("methodName:::::"+methodName);
								Method method = type.getMethod(methodName,null);
								 Object objValue = method.invoke(obj, null);
								 if(objValue==null){
									 value=null;
								  }else{
									  value = method.invoke(obj, null).toString();
								  }
								
							} catch (SecurityException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							} catch (NoSuchMethodException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							HSSFCell tempCell = tempRow.createCell((short)j);
							tempCell.setCellValue(value);
							//tempCell.setCellValue(value);
						} catch (IllegalArgumentException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IllegalAccessException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (InvocationTargetException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				
			}
		setFileDownloadHeader(  req,   response,   fileName);
			try {
				book.write(response.getOutputStream());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
		}
		
		
	public static void doExportByMap(HttpServletRequest req,HttpServletResponse response,List list,String fileName,String[] head,String[] field){
		HSSFWorkbook book = new HSSFWorkbook();
		HSSFSheet sheet = book.createSheet(fileName);
		HSSFRow row = sheet.createRow(0);
		for (int i = 0; i < head.length; i++) {
			HSSFCell cell = row.createCell((short)i);
			cell.setCellValue(head[i]);
		}
		for (int i = 0; i < list.size(); i++) {
			HSSFRow tempRow = sheet.createRow(i+1);
			Map obj = (Map)list.get(i);
		 
					for (int j = 0; j < field.length; j++) {
					 
							HSSFCell tempCell = tempRow.createCell((short)j);
							Object value = obj.get(field[j]);
							tempCell.setCellValue(value==null?"":value.toString());
				 
					}
				
			}
		setFileDownloadHeader(  req,   response,   fileName);
			 
			try {
				book.write(response.getOutputStream());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
		}
	
	
	 public static void setFileDownloadHeader(HttpServletRequest request, HttpServletResponse response, String fileName) {
	 
		 response.setContentType("application/msexcel");
		 response.setCharacterEncoding("UTF-8");
         final String userAgent = request.getHeader("USER-AGENT");
         try {
             String finalFileName = null;
             if(StringUtils.contains(userAgent, "MSIE")){//IE�����
                finalFileName = URLEncoder.encode(fileName,"UTF-8");
             }else if(StringUtils.contains(userAgent, "Mozilla")){//google,��������
                finalFileName = new String(fileName.getBytes(), "ISO8859-1");
             }else{
                 finalFileName = URLEncoder.encode(fileName,"UTF8");//���������
            }
             response.setHeader("Content-Disposition", "attachment; filename=\"" +   finalFileName + "\"");//��������һ�������������������ʾ�򣬶���ֱ����������д�
             
        } catch (UnsupportedEncodingException e) {
         }
     }
	 
	 
	 public static String toUtf8String(String s){ 
	     StringBuffer sb = new StringBuffer(); 
	       for (int i=0;i<s.length();i++){ 
	          char c = s.charAt(i); 
	          if (c >= 0 && c <= 255){sb.append(c);} 
	        else{ 
	        byte[] b; 
	         try { b = Character.toString(c).getBytes("utf-8");} 
	         catch (Exception ex) { 
	             System.out.println(ex); 
	                  b = new byte[0]; 
	         } 
	            for (int j = 0; j < b.length; j++) { 
	             int k = b[j]; 
	              if (k < 0) k += 256; 
	              sb.append("%" + Integer.toHexString(k).toUpperCase()); 
	              } 
	     } 
	  } 
	  return sb.toString(); 
	}

	
}
