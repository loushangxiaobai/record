package com.thinkcms.support;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

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
