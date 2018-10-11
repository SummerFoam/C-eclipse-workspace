package com.pdsu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pdsu.entities.User;
/**
 * Spring MVC 使用 @RequestMapping 注解为控制器指定可以处理哪些 URL 请求
	在控制器的类定义及方法定义处都可标注
	类定义处：提供初步的请求映射信息。相当于当前 WEB 应用的根目录
	方法处：提供进一步的细分映射信息。相对于类定义处的 URL
	若 类定义处未标注 @RequestMapping，则方法处标记的 URL 相当于当前 WEB 应用的根目录
	若 类定义处标注 @RequestMapping，则方法处标记的 URL 相对于类定义处的@RequestMapping而言的
 * @author Acer
 *
 */
@RequestMapping("/user")
@Controller
public class UserController {
	private static final String sucess="success";
	//Rest风格
	/**
	 * post:增加
	 * put:修改
	 * get:查询
	 * delete:删除
	 * @return
	 */
	/**
	 * @RequestMapping注解可以映射请求的URL
	 * RequestMapping直接用在方法上时注解位置：1类上：/项目的根目录：http://localhost:8080/springmvc-01
	 * 服务器的根目录：http://localhost:8080
	 * 2方法上：类上也存在RequestMapping注解，那么这个注解是基于类上的RequestMapping
	 * 类上不存在RequestMapping，/也就是相当于项目的根目录
	 */
	@RequestMapping(value="/Hel")
	public String sayHel() {
		System.out.println("hello world!");
		return sucess;
	}
	@RequestMapping(value="/Hello",method=RequestMethod.POST)
	public String sayHello() {
		System.out.println("hello world!");
		return sucess;
	}
	
	@RequestMapping(value="/testput",method=RequestMethod.PUT)
	/*
	 * @ResponseBody返回键值对
	 */
	public String testMethod() {
		System.out.println("testPut.......");
		return sucess;
	}
	
	@RequestMapping(value="/hello/*/testAnt",method=RequestMethod.POST)
	public String testAnt() {
		System.out.println("testAnt.......");
		return sucess;
	}
	
	/**
	 * @PathVariable:把请求路径中的占位符映射到目标方法参数中
	 * http://localhost:8080/springmvc-01/user/testPathVariable/12?
	 *@RequestParam
	 *                 rest风格                                                 原始的
	 * 增加：post
	 * 删除:delete      delete/{id}  DELETE    delete？id=001
	 * 修改:put         update/{id}   PUT      update?id=001
	 * 查询:get         getXXX/{id}   GET      getXXX?id=001
	 * get post 区别:
	 * 1.get请求是通过地址栏传递参数，post是通过请求体传递参数
	 * 2.get请求参数是有大小限制的，255字符，上传：post
	 * @param dddd
	 * @return
	 */
	@RequestMapping(value="/testPathVariable/{id}")
	public String testPathVariable(@PathVariable(value="id") String dddd) {
		System.out.println("ddd:"+dddd);
		return sucess;
	}
	@RequestMapping(value="/params",method=RequestMethod.POST,params= {"username=zhangsan","pwd=123"})
	public String testParams() {
		System.out.println("testParams.......");
		return sucess;
	}
	/**
	 * @RequestParam接受页面请求参数：
	 * params用来限制请求参数
	 * @param dddd
	 * @return
	 */
	@RequestMapping(value="/testRequestParam")
	public String testRequestParam(@RequestParam(value="username",required=false) String username) {
		System.out.println("username:"+username);
		return sucess;
	}
	//获取页面传值
	/**
	 * 在方法的入参前使用 @ModelAttribute 注解：可以从隐含对象中获取隐含的模型数据中获取对象，再将请求参数 –绑定到对象中，
	 * 再传入入参将方法入参对象添加到模型中 
	 * @return
	 */
	@RequestMapping(value="/getPageValue",method=RequestMethod.POST)
	public String getPageValue(@ModelAttribute("user") User user) {
		String name=user.getName();
		return sucess;
	}
	
}
