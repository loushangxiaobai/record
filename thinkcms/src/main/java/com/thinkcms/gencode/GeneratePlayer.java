package com.thinkcms.gencode;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class GeneratePlayer {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static void main(String[] args) {
		Map data = new HashMap();
		data.put("className", "Stadium"); // 类名
		data.put("classCnName", "球场管理"); // 中文名
		List pros = new ArrayList();
		pros.add(new GenProperty("city", "所属城市", String.class.getSimpleName(),
				"eq",true));
		data.put("properties", pros);
//		createH(data);
		createF(data);
	}

	@SuppressWarnings({ "rawtypes" })
	public static void createH(Map data) {
		// 模拟数据源
		String className = "Stadium";
		
		String dir;
		/* 生成entity */
		dir = System.getProperty("user.dir")
				+ "/src/main/java/com/thinkcms/entity/";// 生成路径
		gen(dir, className, "", "com.thinkcms.entity", "entity.html", data);
		System.out.println("生成entity结束...");
		/* 生成dao */
		dir = System.getProperty("user.dir")
				+ "/src/main/java/com/thinkcms/dao/";// 生成路径
		gen(dir, className, "dao", "com.thinkcms.dao", "dao.html", data);
		System.out.println("生成dao结束...");
		/* 生成daoImpl */
		dir = System.getProperty("user.dir")
				+ "/src/main/java/com/thinkcms/dao/";// 生成路径
		gen(dir, className, "daoImpl", "com.thinkcms.dao", "daoImpl.html", data);
		System.out.println("生成daoImpl结束...");
		/* 生成service */
		dir = System.getProperty("user.dir")
				+ "/src/main/java/com/thinkcms/service/";// 生成路径
		gen(dir, className, "service", "com.thinkcms.service", "service.html",
				data);
		System.out.println("生成service结束...");
		/* 生成daoImpl */
		dir = System.getProperty("user.dir")
				+ "/src/main/java/com/thinkcms/service/";// 生成路径
		gen(dir, className, "serviceImpl", "com.thinkcms.service",
				"serviceImpl.html", data);
		System.out.println("生成daoImpl结束...");
		/* 生成controller */
		dir = System.getProperty("user.dir")
				+ "/src/main/java/com/thinkcms/controller/";// 生成路径
		gen(dir, className, "controller", "com.thinkcms.controller",
				"controller.html", data);
		System.out.println("生成controller结束...");
	}

	@SuppressWarnings({ "rawtypes" })
	public static void createF(Map data) {
		String dir;

		/* 生成edit */
		dir = System.getProperty("user.dir")
				+ "/src/main/webapp/WEB-INF/view/stadium/";// 生成路径
		genPage(dir, "edit", "edit.html", data);
		System.out.println("生成edit结束...");
		/* 生成add */
		dir = System.getProperty("user.dir")
				+ "/src/main/webapp/WEB-INF/view/stadium/";// 生成路径
		genPage(dir, "add", "add.html", data);
		System.out.println("生成add结束...");
		/* 生成index */
		dir = System.getProperty("user.dir")
				+ "/src/main/webapp/WEB-INF/view/stadium/";// 生成路径
		genPage(dir, "index", "index.html", data);
		System.out.println("生成index结束...");
		/* 生成list */
		dir = System.getProperty("user.dir")
				+ "/src/main/webapp/WEB-INF/view/stadium/";// 生成路径
		genPage(dir, "list", "list.html", data);
		System.out.println("生成list结束...");
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void gen(String dir, String className, String type,
			String packageName, String template, Map data) {
		Configuration cfg = new Configuration();

		try {
			data.put("package", packageName); // 包名
			if ("service".equals(type)) {
				className += "Service";
			}
			if ("serviceImpl".equals(type)) {
				className += "ServiceImpl";
			}
			if ("dao".equals(type)) {
				className += "Dao";
			}
			if ("daoImpl".equals(type)) {
				className += "DaoImpl";
			}
			if ("controller".equals(type)) {
				className += "Controller";
			}
			cfg.setClassForTemplateLoading(GeneratePlayer.class,
					"/com/thinkcms/gencode/template"); // 指定模板所在的classpath目录
			cfg.setSharedVariable("upperFC", new UpperFirstCharacter()); // 添加一个"宏"共享变量用来将属性名首字母大写
			cfg.setSharedVariable("lowerFC", new LowerFirstCharacter()); // 添加一个"宏"共享变量用来将属性名首字母大写
			Template t = cfg.getTemplate(template); // 指定模板
			FileOutputStream fos = new FileOutputStream(new File(dir
					+ className + ".java")); // java文件的生成目录
			t.process(data, new OutputStreamWriter(fos, "utf-8")); //
			fos.flush();
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings({ "rawtypes" })
	public static void genPage(String dir, String fileName, String template,
			Map data) {
		Configuration cfg = new Configuration();

		try {

			cfg.setClassForTemplateLoading(GeneratePlayer.class,
					"/com/thinkcms/gencode/template"); // 指定模板所在的classpath目录
			cfg.setSharedVariable("upperFC", new UpperFirstCharacter()); // 添加一个"宏"共享变量用来将属性名首字母大写
			cfg.setSharedVariable("lowerFC", new LowerFirstCharacter()); // 添加一个"宏"共享变量用来将属性名首字母大写
			Template t = cfg.getTemplate(template); // 指定模板

			File file = new File(dir);
			if (!file.exists()) {
				file.mkdirs();
			}

			FileOutputStream fos = new FileOutputStream(new File(dir + fileName
					+ ".jsp")); // java文件的生成目录
			t.process(data, new OutputStreamWriter(fos, "utf-8")); //
			fos.flush();
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		}
	}
}