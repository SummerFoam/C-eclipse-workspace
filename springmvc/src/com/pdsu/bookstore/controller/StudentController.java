package com.pdsu.bookstore.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.pdsu.entities.Role;
import com.pdsu.entities.Student;
import com.pdsu.entities.User1;
@RequestMapping(value="/stu")
@Controller
public class StudentController {
	private static final String success="success";
	/*
	 * 解决乱码
	 */
	@RequestMapping(value="/getMassage",method=RequestMethod.POST)
	public String getMassage(@RequestParam("username") String username) {
		System.out.println("用户名："+username);
		return success;
	}
	
//	HttpServletRequest：请求报文
//	HTTP协议:报文首部、报文头、报文体
//	报文:请求报文
//	       请求首部 请求头 请求体
//	        get请求报文：请求报文  请求首部  请求头
//		        post请求报文：请求报文   请求头  请求体
//			      
//		HttpSession:一次会话（一次浏览器关闭）	   
//	Application:访问次数
//	获取原生的
	//接受页面参数
	@RequestMapping(value="/testRawApi")
	public String testRawApi(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
		String path=request.getContextPath();
		System.out.println("当前路径名："+path);
		response.getWriter().print("hello world");
		//传值到页面
		session=request.getSession();
		session.setAttribute("aaa", "123");
		return success;
	}	     
	@RequestMapping(value="/testPojo",method=RequestMethod.POST)
//	public String testPojo(Student stu,String[] hobby) {
//		System.out.println(stu);
//		System.out.println(stu.getName());
//		System.out.println(stu.getAge());
//		System.out.println(hobby);
//		for(String str:hobby) {
//			System.out.println(str);
//		}
	public String testPojo(Student stu) {
		List<Role> list=stu.getList();
		for(Role role:list) {
			System.out.println(role.getRoleName());
		}
		return success;
	}
	
	//接受页面参数
//	WebUtils 是一个非常好用的工具类
//	访问 HttpServletRequest 和 HttpSession 中的对象和属性带来了方便
	@RequestMapping(value="/testWebUtils")
	public String testWebUtils(HttpServletRequest request) {
		Map<String, Object> parameters=WebUtils.getParametersStartingWith(request, "search_");
//		1，entrySet实现了Set接口，里面存放的是键值对。一个K对应一个V。
//		2，用来遍历map的一种方法:通过getKey（）得到K，getValue得到V。
		Set<Entry<String, Object>> set=parameters.entrySet();
		for(Entry<String, Object> entry : set) {
			System.out.println(entry.getKey()+":"+entry.getValue());
		}
		return success;
	}
	
	//传值到页面
	@RequestMapping(value="/testMap")
//	public String testMap(HttpServletRequest request) {
//		ArrayList<Integer> list=new ArrayList<Integer>();
//		list.add(1);
//		list.add(2);
//		list.add(3);
//		request.setAttribute("list",list );
//		return success;
//	}
	
	//http://localhost:8080/springmvc-01/stu/testMap
//	public String testMap(Map<String,Object> map) {
//		Student student=new Student("张三",12,false);
//		map.put("stu", student);
//		return success;
//	}
	
//	 在view层可以通过${stu}来获取数据,即view层通过model中的key进行获取.
//	model的作用跟request的setAttribute(arg0, arg1) 是一样的，
//	都是把值或是对象进行一个保存，然后可以在视图上进行取值，同样都可以使用ognl表达式取值
	public String testMap(Model model) {
		Student student=new Student("张三",12,false);
		model.addAttribute("stu", student);
		return success;
	}
	
	//使用ModelAndView类用来存储处理完后的结果数据，以及显示该数据的视图
	//结果数据存储在该类的model属性中，把要返回的视图信息存储在该类的view属性中
	@RequestMapping(value="/testModelAndView")
	private ModelAndView testModelAndView() {
		ModelAndView mv=new ModelAndView(success);
		ArrayList<User1> list=new ArrayList<User1>();
		list.add(new User1("1","aa",60,true));
		list.add(new User1("2","bb",60,true));
		list.add(new User1("3","cc",60,true));
		list.add(new User1("4","dd",60,true));
		list.add(new User1("5","ee",60,true));
		mv.addObject("list", list);
		return mv;
	}
	//超链接应为get
	@RequestMapping(value="/update/{id}")
	public String toUpdatePage(@PathVariable(value="id") String sid) {
		System.out.println("修改"+sid);
		return "update";
		
	}
	@RequestMapping(value="/delete/{id}")
	public String toDeletePage(@PathVariable(value="id") String sid) {
		System.out.println("删除成功"+sid);
		return "delete";
		
	}
	@RequestMapping(value="/get/{id}")
	public String toGetPage(@PathVariable(value="id") String sid) {
		System.out.println("查询"+sid);
		return success;
	}
	@RequestMapping(value="/post")
	public String toAddPage() {
		return "add";
	}
	//转发和重定向
	@RequestMapping(value="/redirect")
	public String testRedirect() {
		System.out.println("该方法执行");
		return "forward:/WEB-INF/views/update.jsp";
//		return "redirect:/index.jsp";//删除后需用
	}
	
	@RequestMapping(value="/testJson",method=RequestMethod.POST)
	@ResponseBody
	public List<User1> testJson(HttpServletRequest request){
		//传数据到ajax
		List<User1> list=new ArrayList<User1>();
		list.add(new User1("1","aa",15,true));
		list.add(new User1("2","张三",25,true));
		list.add(new User1("3","王五",20,true));
		list.add(new User1("4","李四",35,true));
		//获取ajax传入的数据
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("time"));
		return list;
		
	}
}
