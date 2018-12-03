package cn.makangning.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImgUploadController {

	@RequestMapping("/upload")
	public void doUpload(@RequestParam MultipartFile file1, HttpServletRequest request) throws IOException {

		String strName = request.getParameter("username");
		System.out.println(strName);
		if (file1.isEmpty()) {
			System.out.println("文件未上传!");
			// return 0;
		} else {
			// 得到上传的文件名
			String fileName = file1.getOriginalFilename();
			// 得到服务器项目发布运行所在地址
			String strFolder = request.getServletContext().getRealPath("/assets/img") + File.separator;
			File folder = new File(strFolder);
			if (!folder.exists()) {
				folder.mkdir();
			}
			// 此处未使用UUID来生成唯一标识,用日期做为标识
			String strNewFilePath = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + fileName;
			String strFinalPath = strFolder + strNewFilePath;
			// 查看文件上传路径,方便查找
			System.out.println(strFinalPath);
			// 把文件上传至path的路径
			File localFile = new File(strFinalPath);
			file1.transferTo(localFile);
			request.getSession().setAttribute("imgpath", "image" + File.separator + strNewFilePath);
			// return 1;
		}
	}
}
