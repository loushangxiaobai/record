package com.thinkcms.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.GraphicsEnvironment;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.thinkcms.entity.Attachment;
import com.thinkcms.service.AttachmentService;
import com.thinkcms.support.QiniuFileUtil;
import com.thinkcms.support.ReqDto;
import com.thinkcms.support.Result;

@Controller
public class CommonController {
	@Autowired
	private AttachmentService attachmentService;
	@RequestMapping("common/chooseLayer")
	public String chooseLayer() {
		return "attachment/chooseLayer";
	}
	@RequestMapping("common/imgList")
	public String imgList(Model model,ReqDto req) {
		try {
			model.addAttribute("list", attachmentService.findList(null, null,"image",
					req.getPageNo(), req.getPageSize()));
		} catch (Exception e) {
			e.printStackTrace();
			return "common/error";
		}
		return "attachment/imgList";
	}
	/**
	 * 文件上传 如果只是上传一个文件,则只需要MultipartFile类型接收文件即可,而且无需显式指定@RequestParam注解
	 * 如果想上传多个文件,那么这里就要用MultipartFile[]类型来接收文件,并且要指定@RequestParam注解
	 * 上传多个文件时,前台表单中的所有<input
	 * type="file"/>的name都应该是myfiles,否则参数里的myfiles无法获取到所有上传的文件
	 * @param id  上传时候输入框ID
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value = "common/fileUpload")
	public Object fileUpload(@RequestParam MultipartFile qqfile[],
			HttpServletRequest request) throws IOException {
		if (qqfile!=null&&qqfile.length>0) {
			String url=request.getSession().getServletContext().getRealPath("/")+ "upload/";
			for(int i=0;i<qqfile.length;i++){
				 MultipartFile file = qqfile[i];
				 url+=saveFile(file, request);
			}
			//String id= (String) request.getSession().getAttribute("id");
			
			return new Result(true, url);
		} else {
			return new Result(false, "请选择文件");
		}
	}
	
	
	
	private String saveFile(MultipartFile file,HttpServletRequest request){
		if(!file.isEmpty()){
			try{
				String ctxPath = request.getSession().getServletContext().getRealPath("/")+ "upload/";
				File dirPath = new File(ctxPath);
				if (!dirPath.exists()) {
					dirPath.mkdir();
				}
				String filename = file.getOriginalFilename();
				File uploadFile = new File(ctxPath + filename);
		        FileCopyUtils.copy(file.getBytes(), uploadFile);
				//return filePath;
		        return uploadFile.getName();
			}catch (Exception e){
				e.printStackTrace();
				
			}
		}
		return null;
		
		
	}
	
	

	/**
	 * 文件删除
	 */
	@ResponseBody
	@RequestMapping("common/fileDelete")
	public Object fileDelete(String path, HttpServletRequest request) {
		if (path != null) {
			attachmentService.delByUrl(path);
			QiniuFileUtil.deleteQiniuP(path);
		}
		return new Result();
	}

	@RequestMapping(value = "/common/createCode", method = RequestMethod.GET)
	public void createCode(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			final int width = 120; // 定义验证码宽度
			int height = 40; // 定义验证码高度
			int codeX = 20;
			int codeY = 30;
			Float fontHeight = 30f;
			char[] codeSequence = { '0', '1', '2', '3', '4', '5', '6', '7',
					'8', '9' };
			BufferedImage bufferedImage = new BufferedImage(width, height,
					BufferedImage.TYPE_INT_RGB);

			Graphics graphics = bufferedImage.getGraphics();
			Random random = new Random();
			graphics.setColor(new Color(250, 250, 250)); // 设置填充背景为白色
			graphics.fillRect(0, 0, width, height);
			// create the font to use. Specify the size!
			String path = CommonController.class.getClassLoader()
					.getResource("num.ttf").getPath();
			Font customFont = Font.createFont(Font.TRUETYPE_FONT,
					new File(path)).deriveFont(fontHeight);
			// register the font
			GraphicsEnvironment ge = GraphicsEnvironment
					.getLocalGraphicsEnvironment();
			ge.registerFont(Font.createFont(Font.TRUETYPE_FONT, new File(path)));
			graphics.setFont(customFont); // 设置字体样式
			graphics.setColor(Color.BLACK);
			graphics.drawRect(0, 0, width - 1, height - 1); // 描边
			// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
			graphics.setColor(getRandColor(160, 200));
			for (int i = 0; i < 100; i++) {
				int x = random.nextInt(width);
				int y = random.nextInt(height);
				int xl = random.nextInt(12);
				int yl = random.nextInt(12);
				graphics.drawLine(x, y, x + xl, y + yl);
			}
			graphics.setColor(Color.BLACK);
			StringBuffer randomCode = new StringBuffer(); // 设置随机验证码
			int red = 0, green = 0, blue = 0;
			for (int i = 0; i < 4; i++) {
				String code = String.valueOf(codeSequence[random.nextInt(10)]);
				red = random.nextInt(255);
				green = random.nextInt(255);
				blue = random.nextInt(255);
				graphics.setColor(new Color(red, green, blue));
				graphics.drawString(code, (i + 1) * codeX, codeY); // 用随机产生的颜色将验证码绘制到图像中。
				randomCode.append(code);
			}
			HttpSession session = request.getSession(); // 将四位数字的验证码保存到Session中。
			session.setAttribute("loginCode", randomCode.toString());
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Cache-Control", "no-cache"); // 禁止图像缓存。
			response.setDateHeader("Expires", 0);
			response.setContentType("image/jpeg");
			OutputStream sos = response.getOutputStream();
			ImageIO.write(bufferedImage, "jpeg", sos); // 将图像输出到Servlet输出流中。
			sos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 登录验证码验证
	 */
	@ResponseBody
	@RequestMapping("/common/validateCode")
	public Object validateCode(String code, HttpServletRequest request) {
		try {
			String loginCode = (String) request.getSession().getAttribute(
					"loginCode");
			if (StringUtils.isBlank(code)) {
				return new Result(false, "验证码不能为空");
			}
			code = code.trim();
			if (!code.equals(loginCode)) {
				return new Result(false, "验证码不正确");
			}
			return new Result();
		} catch (Exception e) {
			return new Result(true, "系统异常");
		}
	}

	private Color getRandColor(int fc, int bc) {// 给定范围获得随机颜色
		Random random = new Random();
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}
}