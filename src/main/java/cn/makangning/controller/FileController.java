package cn.makangning.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.makangning.entity.Course;
import cn.makangning.entity.Files;
import cn.makangning.entity.User;
import cn.makangning.service.FileService;

@Controller
@RequestMapping("file")
public class FileController {

	@Autowired
	private FileService fileService;
	
	@RequestMapping("fileByUid/{uid}")
	public String fileByUid(@PathVariable int uid,Model model) {
		//文件管理
		List<Files> fileList = fileService.selectByPrimaryUid(uid);
		model.addAttribute("filelist", fileList);
		System.out.println(fileList);
		return "file/file_list";
	}
	
	@RequestMapping("fileByCid/{cid}")
	public String fileByCid(@PathVariable int cid,Model model) {
		//文件管理
		List<Files> fileList = fileService.selectByPrimaryCid(cid);
		model.addAttribute("filelist", fileList);
		System.out.println(fileList);
		return "file/file_list";
	}
	
	/**
	 * 文件删除
	 * @param model
	 * @return
	 */
	@RequestMapping("delete/{fid}")
	@ResponseBody
	public int FileDelete(@PathVariable String fid,Model model) {
		//文件管理
		int i = fileService.deleteByPrimaryKey(fid);
		if(i > 0) {
			return 0;
		}
		return 1;
	}
	
	
	/**
	 * 文件上传
	 * @param file
	 * @param request
	 * @return Files files,Course course,User user,
	 * @throws IOException
	 */
	@RequestMapping(value="fileupload",method=RequestMethod.POST)
	@ResponseBody
    public int upload(MultipartFile file,Integer cid,Integer uid,HttpServletRequest request) throws IOException{
		// 此处未使用UUID来生成唯一标识,用日期做为标识
		String fid = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		if (file.isEmpty()) {
			System.out.println("文件未上传!");
			 return 1;
		} else {
			// 得到上传的文件名
			String fileName = file.getOriginalFilename();
			// 得到服务器项目发布运行所在地址
			String strFolder = request.getSession().getServletContext().getRealPath("/assets/image") + File.separator;
			File folder = new File(strFolder);
			if (!folder.exists()) {
				folder.mkdir();
			}
			String strNewFilePath = fid + fileName;
			String strFinalPath = strFolder + strNewFilePath;
			// 查看文件上传路径,方便查找
			System.out.println(strFinalPath);
			// 把文件上传至path的路径
			File localFile = new File(strFinalPath);
			file.transferTo(localFile);
			request.getSession().setAttribute("imgpath", "image" + File.separator + strNewFilePath);
			
			
			Files files = new Files();
	        User user = new User();
	        Course course = new Course();
	        user.setUid(uid);
	        course.setCid(cid);
	        files.setFid(fid);
	        files.setCourse(course);
	        files.setUser(user);
	        files.setUrl(strNewFilePath);
	        
	        System.out.println(strFinalPath);
	        System.out.println(files);
	        System.out.println(strFolder);
	        int i = fileService.insert(files);
	        if(i > 0) {
	        	return 0;
	        }
		}
//        String path = request.getSession().getServletContext().getRealPath("/assets/image");
//        String fileName = file.getOriginalFilename();
//        String fid = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
//        String strFileName = fid + fileName;
//        File dir = new File(path,strFileName);          
//        if(!dir.exists()){  
//            dir.mkdirs();  
//        }
//        file.transferTo(dir);
        
        
        
        return 1;  
    }
	
	
	/**
     * 文件下载
     * @throws IOException 
     */
	@RequestMapping("download")
    public void download(@PathVariable String url,HttpServletRequest request,HttpServletResponse response) throws IOException {
        //模拟文件，myfile.txt为需要下载的文件  
        String path = request.getServletContext().getRealPath("/assets/img") +"\\"+url;  
        //获取输入流  
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(path)));
        //转码，免得文件名中文乱码  
        url = URLEncoder.encode(url,"UTF-8");  
        //设置文件下载头  
        response.addHeader("Content-Disposition", "attachment;filename=" + url);    
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型    
        response.setContentType("multipart/form-data");   
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());  
        int len = 0;  
        while((len = bis.read()) != -1){  
            out.write(len);  
            out.flush();  
        }  
        out.close();  
    }
}
