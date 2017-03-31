package com.thinkcms.support;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tools.zip.ZipEntry;
import org.apache.tools.zip.ZipOutputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class DownloadFile {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(DownloadFile.class);
	public void downloadFile(String filePath,String fileName,HttpServletResponse response){
		BufferedInputStream bis = null;
		InputStream in = null;
		OutputStream out = null;
		try{ 
			response.setContentType("application/octet-stream");
		    response.setHeader("Content-disposition", "attachment;filename="+fileName);
		    in =new FileInputStream(filePath);
		    bis = new BufferedInputStream(in);
		    out = response.getOutputStream();
		    int c=0; 
            while ((c = bis.read()) != -1) {
            	out.write(c);
            }
            out.flush();
		}catch(Exception e){
			LOGGER.error("Exception:" + e);
		}finally{
			if(out!=null){
				try {
					out.close();
				} catch (IOException e) {
					LOGGER.error("IOException:" + e);
				}
			}
			if(bis!=null){
				try {
					bis.close();
				} catch (IOException e) {
					LOGGER.error("IOException :" + e);
				}
			}
			if(in!=null){
				try {
					in.close();
				} catch (IOException e) {
					LOGGER.error("IOException  :" + e);
				}
			}
		}
	}
	public void downloadFileHttpURL(String destUrl,String fileName,HttpServletResponse response){
		if(destUrl != null){
			if(destUrl.lastIndexOf('/')!=-1){
				fileName = fileName.substring(fileName.lastIndexOf('/')+1); 
			};
		}
		BufferedInputStream bis = null;
		InputStream in = null;
		HttpURLConnection connection = null;
		OutputStream out = null;
		try{ 
			response.setContentType("application/octet-stream");
		    response.setHeader("Content-disposition", "attachment;filename=" + fileName);  
		    java.net.URL url = new java.net.URL(destUrl); 
		    connection = (HttpURLConnection) url.openConnection(); 
		    
		    connection.setDoOutput(true);  
		    connection.setRequestMethod("POST");  
		    connection.connect(); 
		    in = connection.getInputStream();  
		    bis = new BufferedInputStream(in);
		    out = response.getOutputStream();
		    int c=0; 
            while ((c = bis.read()) != -1) {
            	out.write(c);
            }
            out.flush();
		}catch(Exception e){
			LOGGER.error("下载文件失败  :" + e);
		}finally{
			if(connection != null){
				connection.disconnect();
			}
			if(out!=null){
				try {
					out.close();
				} catch (IOException e) {
					LOGGER.error("out IOException 异常 :" + e);
				}
			}
			if(bis!=null){
				try {
					bis.close();
				} catch (IOException e) {
					LOGGER.error("bis IOException异常 :" + e);
				}
			}
			if(in!=null){
				try {
					in.close();
				} catch (IOException e) {
					LOGGER.error("in IOException异常 :" + e);
				}
			}
		}
	}
	
	public static String toZip(String zipName, String[] fileNames,HttpServletRequest request){
		
		
		
		String tmpFileName = fileNames[0].substring(0, fileNames[0].lastIndexOf("."))+".zip";
		String basepath=request.getSession().getServletContext().getRealPath("/")+ "upload/";
		String strZipPath = basepath + tmpFileName;
		byte[] buffer = new byte[1024];
		 try {  
	            ZipOutputStream out = new ZipOutputStream(new FileOutputStream(  
	                    strZipPath));  
	            // 需要同时下载的两个文件result.txt ，source.txt  
	            File[] file1 =new File[fileNames.length];
	            for(int j=0;j<fileNames.length;j++){
	            	file1[j]= new File(basepath+fileNames[j]);
	            }
	            
	            
	           /* File[] file1 = { new File(basepath+"436721122206136810.jpg"),  
	                    new File(basepath+"一小时报价系统使用手册.docx") };  */
	            for (int i = 0; i < file1.length; i++) {  
	                FileInputStream fis = new FileInputStream(file1[i]);  
	                out.putNextEntry(new ZipEntry(file1[i].getName()));  
	                //设置压缩文件内的字符编码，不然会变成乱码  
	                out.setEncoding("GBK");  
	                int len;  
	                // 读入需要下载的文件的内容，打包到zip文件  
	                while ((len = fis.read(buffer)) > 0) {  
	                    out.write(buffer, 0, len);  
	                }  
	                out.closeEntry();  
	                fis.close();  
	            }  
	            out.close();  
	           
	        } catch (Exception e) {  
	           e.printStackTrace();
	        }  
		
		
		return tmpFileName;
		
	}
	
	
	
	
	public void downloadFileHttpURLByGET(String destUrl,String fileName,HttpServletResponse response){
		if(destUrl != null){
			if(destUrl.lastIndexOf('/')!=-1){
				fileName = fileName.substring(fileName.lastIndexOf('/')+1); 
			};
		}
		BufferedInputStream bis = null;
		InputStream in = null;
		HttpURLConnection connection = null;
		OutputStream out = null;
		try{ 
			response.setContentType("application/octet-stream");
		    response.setHeader("Content-disposition", "attachment;filename=" + fileName);  
		    java.net.URL url = new java.net.URL(destUrl); 
		    connection = (HttpURLConnection) url.openConnection(); 
		    
		    connection.setDoOutput(true);  
		    connection.setRequestMethod("GET");  
		    connection.connect(); 
		    in = connection.getInputStream();  
		    bis = new BufferedInputStream(in);
		    out = response.getOutputStream();
		    int c=0; 
            while ((c = bis.read()) != -1) {
            	out.write(c);
            }
            out.flush();
		}catch(Exception e){
			LOGGER.error("下载文件失败  :" + e);
		}finally{
			if(connection != null){
				connection.disconnect();
			}
			if(out!=null){
				try {
					out.close();
				} catch (IOException e) {
					LOGGER.error("out IOException 异常 :" + e);
				}
			}
			if(bis!=null){
				try {
					bis.close();
				} catch (IOException e) {
					LOGGER.error("bis IOException异常 :" + e);
				}
			}
			if(in!=null){
				try {
					in.close();
				} catch (IOException e) {
					LOGGER.error("in IOException异常 :" + e);
				}
			}
		}
	}
}
