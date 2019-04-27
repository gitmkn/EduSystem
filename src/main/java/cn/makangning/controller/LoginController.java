package cn.makangning.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.makangning.entity.User;
import cn.makangning.service.UserService;
import cn.makangning.util.Md5Util;
import cn.makangning.util.VerifyCode;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	private UserService userService;

	/**
	 * 登录
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping("dologin")
	@ResponseBody
	public String login(User user,HttpServletRequest request) {
		
		//md5加密
		user.setPassword(new Md5Util().getMd5(user.getPassword()));
		//字符串转json
		String jsonstr = JSON.toJSONString(user);
//		System.out.println(jsonstr);
		try {
			HttpSession session = request.getSession();
			List<User> user2 = userService.login(user);
			String userjson = JSON.toJSONString(user2.get(0));
			System.out.println(userjson);
			if(user2.size() > 0) {
				session.setAttribute("userinfo", user2.get(0));
				return "home/index";
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("登录时发生错误（检查账号密码）");
		}
		return "errer";
	}
	
	/**
	 * 验证码创建
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping("code")
	public void code(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("verCode");
		VerifyCode vc = new VerifyCode();//创建VerifyCode类的对象
		BufferedImage bi = vc.getImage();//调用getImge()方法获得一个BufferedImage对象
		VerifyCode.output(bi,response.getOutputStream());//调用静态方法output()方法将图片保存在文件输出流中
		String code = vc.getText();
		session.setAttribute("verCode", code);
		System.out.println(vc.getText());//在控制台上打印验证码的文本值
	}
	
	/**
	 * 验证码验证
	 * @param code
	 * @param request
	 * @return
	 */
	@RequestMapping("Checkcode/{code}")
	@ResponseBody
	public int Checkcode(@PathVariable String code,HttpServletRequest request){
		System.out.println(code);
		HttpSession session = request.getSession();
		String verCode = (String) session.getAttribute("verCode");
		if(code.equals(verCode)) {
			return 1;
		}else {
			return 0;
		}
	}
}
